cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "80d4a872d39262ec02721eaf9f2cb2e65737533393e7792a59df3f8a09844695",
         intel: "124e73279f3c63bfb7de1dedaf54fe17378b6ab98e48e358641010c8c977eab4"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
