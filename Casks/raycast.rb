cask "raycast" do
  version "1.5.1"
  sha256 :no_check

  url "https://api.raycast.app/v2/download"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.app/"

  app "Raycast.app"

  zap trash: [
              "/Users/matt/Library/Caches/com.raycast.macos",
              '/Users/matt/Library/Application\ Support/com.raycast.macos',
            ]
end
