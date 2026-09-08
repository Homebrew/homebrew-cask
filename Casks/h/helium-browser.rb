cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.16.5.1"
  sha256 arm:          "8bed392e9fd676467cd48d68c6bfaebc56918c61a015e3d91e55411750954d9b",
         intel:        "dad9b62c7d7f208f1b42f32bdcb70d0a7e4fb99922095f44486968a03d823202",
         arm64_linux:  "cc264504b6c6ff7a5d781c7aa81ad55b2e1d78d36d6eee042bd4532fdc204d04",
         x86_64_linux: "37afb0c20e3ab9fb1b0aa109bff5a94d60c29c8ded9c5b79f1c1ba4ec1b15dec"

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
