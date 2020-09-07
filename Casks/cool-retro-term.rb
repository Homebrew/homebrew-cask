cask "cool-retro-term" do
  version "1.1.1"
  sha256 "267732bc3b5b9fea0abeabfe5c7f54c055b5035dcaf834a0382a0e46e2000d90"

  url "https://github.com/Swordfish90/cool-retro-term/releases/download/#{version}/Cool-Retro-Term-#{version}.dmg"
  appcast "https://github.com/Swordfish90/cool-retro-term/releases.atom"
  name "cool-retro-term"
  homepage "https://github.com/Swordfish90/cool-retro-term"

  app "cool-retro-term.app"

  zap trash: [
    "~/Library/Application Support/cool-retro-term",
    "~/Library/Caches/cool-retro-term",
    "~/Library/Preferences/com.yourcompany.cool-retro-term.plist",
    "~/Library/Preferences/com.yourcompany.cool-retro-term.cool-retro-term.plist",
    "~/Library/Saved Application State/com.yourcompany.cool-retro-term.savedState",
  ]
end
