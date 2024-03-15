cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "1.12.3"
  sha256 arm:   "4b2d260a02a1d5567badc2ea15de06c03be80deeb8ef74bb155c5b222b8d4d37",
         intel: "4aed59b0718a88037a2ab3413e22b10605face4b114010bb3acfb69e83b1f47a"

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
