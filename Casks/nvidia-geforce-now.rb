cask "nvidia-geforce-now" do
  version "2.0.26.116,897C99"
  sha256 "f74cafac283b933d05fcf4957e7faad18de05f2a1169993a223a7bea124c3687"

  url "https://ota-downloads.nvidia.com/ota/GeForceNOW-release.app_#{version.after_comma}.zip"
  appcast "https://ota.nvidia.com/release/available?product=GFN-mac&version=#{version.before_comma}&channel=OFFICIAL",
          must_contain: "[]" # Only happens when there are no newer versions
  name "NVIDIA GeForce NOW"
  desc "Cloud gaming platform"
  homepage "https://www.nvidia.com/en-us/geforce/products/geforce-now/"

  depends_on macos: ">= :yosemite"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "GeForceNOW.app", target: "NVIDIA GeForce NOW.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA/GeForceNOW",
    "~/Library/Preferences/com.nvidia.gfnpc.mall.helper.plist",
  ]
end
