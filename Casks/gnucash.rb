cask "gnucash" do
  version "4.8"
  sha256 "abb6a0bc433207c1f31fee33aa7f0c63774217b2675e5fab78062c4cd862f975"

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
