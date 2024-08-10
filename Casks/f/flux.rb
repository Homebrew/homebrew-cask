cask "flux" do
  version "42.2"
  sha256 "c937e24209f2ee99ad4586d7a19948bb1bdfca725b62e6bd061668be1f182765"

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  name "f.lux"
  desc "Screen colour temperature controller"
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
