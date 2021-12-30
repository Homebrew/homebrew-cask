cask "flux" do
  version "41.5"
  sha256 "ffb692b09bbb30e8e70ec8a89c076ede8ca006abd3b990760c9218ae667b0cfb"

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
