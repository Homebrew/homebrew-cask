cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.9"
  sha256 arm:   "922cc129ca6f9494c1835e2bddcda6e2f64179e213fb2e56ed0d5ab35468321d",
         intel: "f9e619e99c0c65c587806e76eb4017bf71bbc25e27de2bb79f15b66005c946f9"

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
