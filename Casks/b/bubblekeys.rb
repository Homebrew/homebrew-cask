# typed: strict
# frozen_string_literal: true

cask "bubblekeys" do
  version "0.1.0"
  sha256 "7614b5e9c048b51c2dfec2c1a95335c173024d8db6b971688d1b9db959dfcf3a"

  url "https://github.com/sereeein/bubblekeys/releases/download/v#{version}/BubbleKeys_#{version}_universal.dmg",
      verified: "github.com/sereeein/bubblekeys/"
  name "BubbleKeys"
  desc "Open-source typing sound effects with a pixel-game UI"
  homepage "https://github.com/sereeein/bubblekeys"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BubbleKeys.app"

  zap trash: [
    "~/Library/Application Support/BubbleKeys",
    "~/Library/Preferences/app.bubblekeys.plist",
  ]
end
