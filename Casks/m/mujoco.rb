cask "mujoco" do
  version "3.8.0"
  sha256 "ce381f3d77655707af037d8c2ad525cb42f517874b264fae55c95073d336befb"

  url "https://github.com/google-deepmind/mujoco/releases/download/#{version}/mujoco-#{version}-macos-universal2.dmg",
      verified: "github.com/google-deepmind/mujoco/"
  name "MuJoCo"
  desc "General purpose physics engine"
  homepage "https://mujoco.org/"

  depends_on macos: ">= :big_sur"

  app "MuJoCo.app"

  zap trash: [
    "~/Library/Caches/org.mujoco.mujoco",
    "~/Library/Preferences/org.mujoco.mujoco.plist",
    "~/Library/Saved Application State/org.mujoco.mujoco.savedState",
  ]
end
