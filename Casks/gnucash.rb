cask "gnucash" do
  version "4.6"
  sha256 "1d641691a5c6c4e6cfb32438175c242bdcfb2f1c497db35fc66b4fecd9f084b2"

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
