cask "mujoco" do
  version "3.8.1"
  sha256 "10b0e3960b5fcae95254a52e771dee9d377e3aaae796934e280fa13dc036e898"

  url "https://github.com/google-deepmind/mujoco/releases/download/#{version}/mujoco-#{version}-macos-universal2.dmg",
      verified: "github.com/google-deepmind/mujoco/"
  name "MuJoCo"
  desc "General purpose physics engine"
  homepage "https://mujoco.org/"

  depends_on macos: :big_sur

  app "MuJoCo.app"

  zap trash: [
    "~/Library/Caches/org.mujoco.mujoco",
    "~/Library/Preferences/org.mujoco.mujoco.plist",
    "~/Library/Saved Application State/org.mujoco.mujoco.savedState",
  ]
end
