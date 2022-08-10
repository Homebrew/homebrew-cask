cask "another-redis-desktop-manager" do
  arch arm: "-M1-arm64-", intel: "."

  version "1.5.7"

  if Hardware::CPU.intel?
    sha256 "54ac63e0a21ae9e057ea0aaa711a3b8ede810209c9335cc9fa3de5916dbabed5"
  else
    sha256 "5d53fa0f7fdcc8a29c4ddb84a80105b16f85dde69b0f8e2cc23c5a5b7f70a3be"
  end

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager#{arch}#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Another Redis Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/another-redis-desktop-manager",
    "~/Library/Preferences/me.qii404.another-redis-desktop-manager.plist",
  ]
end
