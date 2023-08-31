cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.16"
  sha256 arm:   "4fe8bb8ded51fe6ffeaa6b6a289209da1d5c8dd21e0d0072103b3e5612e2302a",
         intel: "e1ba97e6f470e3053398f710366f8e76ec3c13723ef7a74521f76cbdf3773bf1"

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
