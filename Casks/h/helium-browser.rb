cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.18.1.1"
  sha256 arm:          "418e7339807161cbdac42dba70520679970576d50f5aa4f30a3f0862feb4a1d9",
         intel:        "6e358eb02828a568df70d2cd13aed4f6f7db23896c11787ac1b9c621bc5d6e34",
         arm64_linux:  "df929552ab1ba4486a027b366fe3ed9b3a90291c2227779b44041476eedecad7",
         x86_64_linux: "d1e1b993dfbfee06e9f90e8a29cd58e87a475197b04fc0487506227c338569cb"

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
