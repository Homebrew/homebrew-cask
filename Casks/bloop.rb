cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "f34424f616ebc820d0a58cb95648f8ff8147b11ccaea4d883056475084a175fc",
         intel: "df77446989142b2274a3590ca9d403a2ab013facadc0a5e112e8a71240dd50ac"

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
