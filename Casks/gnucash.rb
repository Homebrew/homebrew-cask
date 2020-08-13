cask "gnucash" do
  version "4.1,2"
  sha256 "1f4a4ed6417a43989f6fa5a7095c248b6bfe2b08d7762b82e8ef50e9beec5f23"

  # github.com/Gnucash/gnucash/ was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.before_comma}/Gnucash-Intel-#{version.before_comma.chomp("b")}-#{version.after_comma}.dmg"
  appcast "https://github.com/Gnucash/gnucash/releases.atom"
  name "GnuCash"
  homepage "https://www.gnucash.org/"

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
