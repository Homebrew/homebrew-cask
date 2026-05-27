cask "mujoco" do
  version "3.9.0"
  sha256 "a1229a5d068f52272a329c0962090b9cd0639eff04db48d08ecd2deaaf4a8780"

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
