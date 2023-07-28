cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.10"
  sha256 arm:   "bda1f92ba292f155c90387c01138cf4664b5f1d4be6763322198253c1b310324",
         intel: "8eadf51bb3cc4b15de37ad20cf07742596d97aba646c8da7561c9d9a71ed37cd"

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
