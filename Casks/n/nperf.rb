cask "nperf" do
  version "1.12.3"
  sha256 :no_check

  url "https://app.nperf.com/getMacApp?arch=arm64"
  name "nPerf"
  desc "Test the quality of your Internet connection up to 10 Gb/s"
  homepage "https://www.nperf.com/en/nperf-application-pc-mac"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on arch: :arm64

  pkg "nPerf-arm64-#{version}.pkg"

  uninstall pkgutil: "com.nperf.nPerf"

  zap trash: [
    "~/Library/Application Support/nPerf",
    "~/Library/Saved Application State/com.nperf.nPerf.savedState",
    "/var/db/receipts/com.nperf.nPerf.bom",
    "/var/db/receipts/com.nperf.nPerf.plist",
  ]
end
