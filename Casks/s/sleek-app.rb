cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.27"
  sha256 arm:   "0c6ec1f6b99e2d45098061f0fa3cf78c517c906b169fb49d4dc238df8137c7bc",
         intel: "b77e03a37d9cce321d4ec588ae3a758eae43142f86d724b3c3977b1542eb4be3"

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
