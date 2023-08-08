cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.11"
  sha256 arm:   "ce2086f3ae3b01d773af513ebb110470b15a56e75bce82a700d3fde4bd81c6bb",
         intel: "4b451bf82e5b4734a64137c2a400135607c45aae92c9c310166ef400a3b3c462"

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
