cask "mujoco" do
  version "4.0.0"
  sha256 "6b3bd6650aff3e6681a1f5a62d596980f0f693b7a91a66c4966313836a5f2a6c"

  url "https://github.com/google-deepmind/mujoco/releases/download/#{version}/mujoco-#{version}-macos-universal2.dmg"
  name "MuJoCo"
  desc "General purpose physics engine"
  homepage "https://mujoco.org/"

  depends_on :macos

  app "MuJoCo.app"

  zap trash: [
    "~/Library/Caches/org.mujoco.mujoco",
    "~/Library/Preferences/org.mujoco.mujoco.plist",
    "~/Library/Saved Application State/org.mujoco.mujoco.savedState",
  ]
end
