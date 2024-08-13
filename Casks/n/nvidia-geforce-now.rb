cask "nvidia-geforce-now" do
  version "2.0.65.163"
  sha256 :no_check

  url "https://download.nvidia.com/gfnpc/GeForceNOW-release.dmg"
  name "NVIDIA GeForce NOW"
  desc "Cloud gaming platform"
  homepage "https://www.nvidia.com/en-us/geforce-now/download/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "GeForceNOW.app", target: "NVIDIA GeForce NOW.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA/GeForceNOW",
    "~/Library/Preferences/com.nvidia.gfnpc.mall.helper.plist",
  ]
end
