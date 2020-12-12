cask "nvidia-geforce-now" do
  version "2.0.25.124,AB256E"
  sha256 "e9cf6178f9157f71f6c390ecd30ea8915c4c9b8c45cffd022d24c7afaca20f07"

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
