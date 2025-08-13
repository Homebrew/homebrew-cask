cask "nperf" do
  arch arm: "arm64", intel: "x86_64"

  version "2.15.5"
  sha256 arm:   "228834323346e58492a9a374bdd4203d966e70d338855780875c4cad8404ec65",
         intel: "cf8d281ca1792fe64b1df2583c5866421c2a7c48ac395b19952f1783f24327d4"

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
