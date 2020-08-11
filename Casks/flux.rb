cask "flux" do
  version "40.1"
  sha256 "1844305519b450cfe3c5475e99f6c06fb2eea51e65c1b0ee25f6671a49fff75d"

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast "https://justgetflux.com/mac/macflux.xml"
  name "f.lux"
  desc "Screen color temperature controller"
  homepage "https://justgetflux.com/"

  auto_updates true

  app "Flux.app"

  uninstall quit: "org.herf.Flux"

  zap trash: [
    "~/Library/Application Support/Flux",
    "~/Library/Caches/org.herf.Flux",
    "~/Library/Containers/com.justgetflux.flux",
    "~/Library/Cookies/org.herf.Flux.binarycookies",
    "~/Library/Preferences/org.herf.Flux.plist",
  ]
end
