cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "2.15.9"
  sha256 arm:   "655d34926e6bd752070ea06a0c36ad3636ace0b3a11b45134b65b0e34c1a4abf",
         intel: "1636dcd2192bd1b0f38bd9069c4d757cc9c7395541cf00459dc1fd3cf9992888"

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
