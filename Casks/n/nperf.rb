cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "2.15.6"
  sha256 arm:   "c7a4a9816c1719dd3651a23622f31cbd6ce2271dc8928bcd409d9e3d6d0cfab5",
         intel: "ac7e5019c42e7a7f0909f12d04ea9559753905feac62d559154e82d53d791c6b"

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
