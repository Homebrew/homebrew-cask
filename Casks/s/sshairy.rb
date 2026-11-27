cask "sshairy" do
  version "0.3.2"
  sha256 "227817029c2d5c8759b225cf3b89259383e105bf82f23c374f583d81272269bf"

  url "https://github.com/Marchen-orz/Sshairy/releases/download/v0.3.2/sshairy-0.3.2-macos-universal.dmg"
  name "Sshairy"
  desc "Lightweight SSH client with an AI agent"
  homepage "https://sshairy.marchen.top"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sshairy.app"
end
