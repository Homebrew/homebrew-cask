cask "mujoco" do
  version "3.10.0"
  sha256 "baffef6e5b3ee044d0093b094fa7f875849fb71e1400a3b7321482de565d19d9"

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
