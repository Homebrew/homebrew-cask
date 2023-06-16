cask "flux" do
  version "42.2"
  sha256 "c937e24209f2ee99ad4586d7a19948bb1bdfca725b62e6bd061668be1f182765"

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  name "f.lux"
  desc "Screen color temperature controller"
  homepage "https://justgetflux.com/"

  # The sparkle feed "https://justgetflux.com/mac/macflux.xml" is currently
  # unstable and often outputs the older version 40.1 as the latest release.
  # As a workaround, we extract the version from plist of unversioned download.
  livecheck do
    url "https://justgetflux.com/mac/Flux.zip"
    strategy :extract_plist
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
