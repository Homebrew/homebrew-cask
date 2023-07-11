cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "aa818fd493b6521339e079208ce54c31371b98bf2d88f1232a4de35e8301565c",
         intel: "040d2cc0d2363282c9440bf6a15923fcfff0de47f900c229a86216e5b9ac12cd"

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
