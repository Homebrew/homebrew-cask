cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "5142386ff9f8b4cda6d826256da6870ac4b0a1fd0402e421520bcf671d8d4578",
         intel: "600fa0953cd5cd93fe9941771b6df5708ed46fae3a3dac1de6e948697d7089e7"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "Code search engine"
  homepage "https://bloop.ai/"

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/Preferences/ai.bloop.bloop.plist",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/WebKit/ai.bloop.bloop",
  ]
end
