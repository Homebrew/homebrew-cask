cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "a3dba998469edc93513f74eaf0da294f15e21c61b6f279aa99158c9000120814",
         intel: "2c98e2d03afe5321f17f310972bbc65a15dd3b41b106dedde20a2374a731bc3d"

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
