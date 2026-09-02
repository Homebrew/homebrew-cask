cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "2.15.11"
  sha256 arm:   "f580cf744aef82b9ea60af6b4d2e1211402043e2014c7b8f85dc8d0446e32c24",
         intel: "a1788c5970bae842b2e18c1501d412d444126fd9f0dabf5019f332e020900f73"

  url "https://repo.nperf.com/macos/nperf/nPerf-#{arch}-#{version}.pkg"
  name "nPerf"
  desc "Internet speed test utility"
  homepage "https://www.nperf.com/"

  livecheck do
    url "https://app.nperf.com/getMacApp?arch=#{arch}"
    strategy :header_match
  end

  depends_on :macos

  pkg "nPerf-#{arch}-#{version}.pkg"

  uninstall pkgutil: "com.nperf.nPerf"

  zap trash: [
    "~/Library/Application Support/nPerf",
    "~/Library/Saved Application State/com.nperf.nPerf.savedState",
  ]
end
