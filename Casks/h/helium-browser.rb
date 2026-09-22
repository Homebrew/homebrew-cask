cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.17.2.1"
  sha256 arm:          "f1a3fecde3c08254f1b1eec30e36ecd25f98cf3799644427fbcefd6e6beafacf",
         intel:        "f84bf8731c01616f0de157e5d6a3222464f111e600138d0dc8992eade0248e29",
         arm64_linux:  "167a3f7698179b9cd2e5218c3aad16ec9c13d4159b1a31dc1d4b2791785f3028",
         x86_64_linux: "0c5caa2ba9eb8d986c7353a876eaae2444de07256779683a075f326c861693b4"

  on_macos do
    depends_on macos: :ventura

    app "Helium.app"

    zap trash: [
      "~/Library/Application Support/net.imput.helium",
      "~/Library/Caches/net.imput.helium",
      "~/Library/HTTPStorages/net.imput.helium",
      "~/Library/Preferences/net.imput.helium.plist",
    ]
  end
  on_linux do
    app_image "helium-#{version}-#{arch}.AppImage", target: "Helium.AppImage"
  end

  url "https://github.com/imputnet/helium-#{os}/releases/download/#{version}/helium#{file_sep}#{version}#{file_sep}#{arch}#{url_end}"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
