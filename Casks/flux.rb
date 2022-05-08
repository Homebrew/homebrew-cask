cask "flux" do
  version "42.1"
  sha256 "d5e9ccf1171f5f24addd7f454eb758f4b0921b94da3097ce540d9f9f25e6f5bd"

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
