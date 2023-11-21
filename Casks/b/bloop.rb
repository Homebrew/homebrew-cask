cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.10"
  sha256 arm:   "ad8d21aef94b90348e32255ee7c83aa9680f4b219fb6b45bfebd03e5f08367b0",
         intel: "30bebe04ed4044e47f10ecc96f7a2a8fdd4696a7bac5426bdedeee78830bfe2b"

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
