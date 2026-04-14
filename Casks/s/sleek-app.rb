cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.25"
  sha256 arm:   "33ddaf957ef0da8e77638d0203614bcfc0465f5fe5fe05917e8697bd43b5094b",
         intel: "b3a799b4853d6d37da580ff30779792143d44a840874c217ad7e7de168f68866"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
