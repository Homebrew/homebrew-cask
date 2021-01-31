cask "flux" do
  version "41.1"
  sha256 "2b2bea6fa4864362c0893df5202ba33d9f3f5239613599eadfbfee2d1bf32aa0"

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  name "f.lux"
  desc "Screen color temperature controller"
  homepage "https://justgetflux.com/"

  livecheck do
    url "https://justgetflux.com/mac/macflux.xml"
    strategy :sparkle
  end

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
