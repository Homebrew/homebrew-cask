cask "html-mangareader" do
  version "2.2.0"
  sha256 "83ed6b7e5d05e1fedf79628de0f0323df7f37956a86f00921ca900554a3a5ddb"

  url "https://github.com/luejerry/html-mangareader/releases/download/v#{version}/mangareader-macos_x86-#{version}.dmg"
  name "HTML Mangareader"
  desc "Lightweight offline CBZ/CBR and image viewer with full continuous scrolling"
  homepage "https://github.com/luejerry/html-mangareader"

  app "HTML Mangareader.app"

  zap trash: [
    "~/Library/Application Support/html-mangareader",
    "~/Library/Preferences/HTML Mangareader.plist",
    "~/Library/Saved Application State/HTML Mangareader.savedState",
  ]
end
