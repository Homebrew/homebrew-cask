cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "c2c00ce9f93e9bb1f5fad55a4477cdb0182479a8838a5d82572b4d495cc2febd",
         intel: "2b729aa4fb436849e0fab64547cf0d3299498587a77d17433289683b8c9b3fc3"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "Code search engine"
  homepage "https://bloop.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/Preferences/ai.bloop.bloop.plist",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/WebKit/ai.bloop.bloop",
  ]
end
