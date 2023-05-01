cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "5142386ff9f8b4cda6d826256da6870ac4b0a1fd0402e421520bcf671d8d4578",
         intel: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "bloop is a fast code search engine written in Rust."
  homepage "https://bloop.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/WebKit/ai.bloop.bloop",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/Preferences/ai.bloop.bloop.plist",
  ]
end
