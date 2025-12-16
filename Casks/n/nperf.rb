cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "2.15.10"
  sha256 arm:   "1edaee76a098835b9153e352a93dc53a1c831fb3ce61b446e8ff68b654adabc1",
         intel: "c91f1e0579d0062dc823763936494bddd176dcafee84188124cc041c1b9c4d52"

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
