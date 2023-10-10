cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "7aedf8260381d48a35aee03a71229d728677d39134412200f191b6e9dd10c7e5",
         intel: "0fb27d87b10c72ea3b9a44c545870e07eb41b3cd0bab27a05785a39fc325f74c"

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
