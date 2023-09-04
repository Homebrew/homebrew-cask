cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.17"
  sha256 arm:   "f00dc58f067a230e6262ca1695b56757ca881986b82acd739a7c7909de58d17e",
         intel: "01fd7c5d23e313019b5f266e90f198480226c59574d5fa9d0f681df61f0a3532"

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
