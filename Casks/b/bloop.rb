cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.7"
  sha256 arm:   "77f91b7a95b542bdc905435bdd9568fc37241057f8e935792cc8fa30eccbec83",
         intel: "c34a9973180bd9e4d4543128112cbfda713cbd28c76767f0531b5bd8619205a8"

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
