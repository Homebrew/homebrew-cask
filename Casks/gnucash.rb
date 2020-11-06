cask "gnucash" do
  version "4.2,1"
  sha256 "66f48acf1aa002e2de86865bb56f6a695cecf1fd3734b4a7e85fc170cf14c6f5"

  # github.com/Gnucash/gnucash/ was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.before_comma}/Gnucash-Intel-#{version.before_comma.chomp("b")}-#{version.after_comma}.dmg"
  appcast "https://github.com/Gnucash/gnucash/releases.atom"
  name "GnuCash"
  desc "Double-entry accounting program"
  homepage "https://www.gnucash.org/"

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
