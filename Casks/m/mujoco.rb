cask "mujoco" do
  version "3.12.0"
  sha256 "8410882d724c3637b935dc0482b0de90efed44b17bbcfcb4a165ee46285a4865"

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
