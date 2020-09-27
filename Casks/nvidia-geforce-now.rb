cask "nvidia-geforce-now" do
  version "2.0.23.110,2C3E09"
  sha256 "cdecbd5da9eb67c4f397b8c81bb6dac124bbd7f85665161378ec40aca8ea4bf6"

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
