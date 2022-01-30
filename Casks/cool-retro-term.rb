cask "cool-retro-term" do
  version "1.2.0"
  sha256 "605610df37b6ed92fac14d5e34a83350148e989b10ad9550d3403187fb974e48"

  url "https://github.com/Swordfish90/cool-retro-term/releases/download/#{version}/Cool-Retro-Term-#{version}.dmg"
  name "Cool Retro Term"
  desc "Terminal emulator mimicking the old cathode display"
  homepage "https://github.com/Swordfish90/cool-retro-term"

  app "cool-retro-term.app"

  zap trash: [
    "~/Library/Application Support/cool-retro-term",
    "~/Library/Caches/cool-retro-term",
    "~/Library/Preferences/com.yourcompany.cool-retro-term.cool-retro-term.plist",
    "~/Library/Preferences/com.yourcompany.cool-retro-term.plist",
    "~/Library/Saved Application State/com.yourcompany.cool-retro-term.savedState",
  ]
end
