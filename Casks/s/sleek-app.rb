cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.26"
  sha256 arm:   "710e5cf6ab3721c979bf04a8534b4233941baea7ed614c25041cc319a820c8e1",
         intel: "67a4f310fee7731bf671f75c514ffba61090a6d0ca7f1861abc8f83a8ee8c18d"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
