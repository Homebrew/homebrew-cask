cask "flux" do
  version "41.4"
  sha256 "be67b22bb2dc1f2a4758f5aa642a7d7740c4c575712e8c57591cd7c8c2d1b3ce"

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
