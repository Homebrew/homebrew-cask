cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.15"
  sha256 arm:   "bc2a3c8f117f8189f81b9847f07dbf8c440b2e8acea205b78fe477f374e3e75a",
         intel: "aa3145197c5396893c07a369772ae0de9ecdd2d788437e48cbd17ce22af4e500"

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
