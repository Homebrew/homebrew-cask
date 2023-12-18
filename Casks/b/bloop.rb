cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.11"
  sha256 arm:   "b8f02a26ebfd737b892bfce2418bcf5b0b3a5c46f5b57c6be4c4b327355cbb71",
         intel: "d54c68e0dd9e9d41f24f0aeb15591546e7430c77720a24d4342f0cdc6ba806cc"

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
