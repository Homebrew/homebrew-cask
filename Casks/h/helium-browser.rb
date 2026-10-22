cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.20.1.1"
  sha256 arm:          "5a11718ea2237a1e59f2c84facf2166abdb80773399085d6cd7845d73f1d739a",
         intel:        "a2d5ebcc87c772fff8dea21a85e52165c68ba3118e613b3a915f4d1d33d95fba",
         arm64_linux:  "0ace4ed79901c89db9a4759458026644f1b4cdfc44332be9e39f2956920f9d52",
         x86_64_linux: "d4b789b25d0a9ae12c76671e444e8a85edcf828e0419c678d18c41fb1ac3030e"

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
