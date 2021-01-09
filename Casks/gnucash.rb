cask "gnucash" do
  version "4.4,1"
  sha256 "e6627feea1eb4aa6eafb05dd434fc2bc6954322152d8559f78901848c64631ca"

  url "https://github.com/Gnucash/gnucash/releases/download/#{version.before_comma}/Gnucash-Intel-#{version.before_comma.chomp("b")}-#{version.after_comma}.dmg",
      verified: "github.com/Gnucash/gnucash/"
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
