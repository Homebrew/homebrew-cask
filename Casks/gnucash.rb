cask "gnucash" do
  version "4.5"
  sha256 "9b8dd368d8c8b8879938830f129f2abf5014182c84d0cb8fc133b5d0d1d321a9"

  url "https://github.com/Gnucash/gnucash/releases/download/#{version}/Gnucash-Intel-#{version}-1.dmg",
      verified: "github.com/Gnucash/gnucash/"
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
