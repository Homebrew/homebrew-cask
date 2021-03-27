cask "macgesture" do
  version "3.0.0"
  sha256 "bd3e2638dc9eef8d1a6a9945792d7285c3cf85d47cc12bd8b9000bec83c43831"

  url "https://github.com/MacGesture/MacGesture/releases/download/#{version}/MacGesture-#{version}.zip"
  name "MacGesture"
  desc "Utility to set up global mouse gestures"
  homepage "https://github.com/MacGesture/MacGesture"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MacGesture.app"
end
