cask "quiterss" do
  version "0.19.4"
  sha256 "58c7517860252e60521d5681ce1f6220c7d4bedb4841a0d1e41236695085627e"

  url "https://quiterss.org/files/#{version}_/QuiteRSS-#{version}.dmg"
  appcast "https://github.com/QuiteRSS/quiterss/releases.atom"
  name "QuiteRSS"
  desc "Free news feeds reader"
  homepage "https://quiterss.org/"

  app "quiterss.app"

  zap delete: [
    "~/.config/QuiteRss",
    "~/Library/Caches/QuiteRss",
    "~/Library/Application Support/QuiteRss",
    "~/Library/Preferences/org.quiterss.QuiteRSS.plist",
  ]
end
