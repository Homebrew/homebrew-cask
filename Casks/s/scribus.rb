cask "scribus" do
  arch arm: "_1-arm64"

  version "1.6.3"
  sha256 arm:   "7b046918ad07cf11582436eb064d53b15ca41e5c0e003d4f73107e959d975586",
         intel: "7fc542f8d36b8f8e4ffc345f32e1b34be510fba1cda5d34cddf8876f1b6d7489"

  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}#{arch}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus"
    regex(%r{url=.*?/scribus[._-]v?(\d+(?:\.\d+)+)(?:#{arch})?\.(?:dmg|pkg)}i)
  end

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
