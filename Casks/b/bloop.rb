cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.13"
  sha256 arm:   "29b015815b8e755bc77426fdef878ce03cb8b6364245662e84b2d5b341b08afc",
         intel: "1d626d08b01689042fe28a936882708da92c9c487f36bfc063acadd164869b41"

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
