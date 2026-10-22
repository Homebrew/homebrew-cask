cask "neat" do
  arch arm: "-arm64"

  version "0.0.65"
  sha256 arm:   "beb7395a51862c3b3c5388b5ad63829b3f5f761f5653f4d05c5e6bbaffd0c328",
         intel: "89bd379a383da5226da12db1bbf938b388d0b785d7caa3e78f2d4878d56bd41a"

  url "https://github.com/neat-run/activity-feed-public/releases/download/v#{version}/Neat-#{version}#{arch}.dmg"
  name "Neat"
  desc "GitHub and Linear notifications on your desktop and menu bar"
  homepage "https://neat.run/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Neat.app"

  zap trash: [
    "~/Library/Application Support/Neat",
    "~/Library/Preferences/com.electron.neat.plist",
  ]
end
