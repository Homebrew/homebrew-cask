cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "2.15.4"
  sha256 arm:   "de592a44fd15fddc8a30c46d9e997f7cd7ff685ff237f351f34815035051185c",
         intel: "88bee30cd3db7c6cdc002275f332632af02e2d166e7f941e9c10827b259853aa"

  url "https://repo.nperf.com/macos/nperf/nPerf-#{arch}-#{version}.pkg"
  name "nPerf"
  desc "Internet speed test utility"
  homepage "https://www.nperf.com/"

  livecheck do
    url "https://app.nperf.com/getMacApp?arch=#{arch}"
    strategy :header_match
  end

  pkg "nPerf-#{arch}-#{version}.pkg"

  uninstall pkgutil: "com.nperf.nPerf"

  zap trash: [
    "~/Library/Application Support/nPerf",
    "~/Library/Saved Application State/com.nperf.nPerf.savedState",
  ]
end
