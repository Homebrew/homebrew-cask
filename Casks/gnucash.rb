cask "gnucash" do
  version "4.1,4"
  sha256 "9c3685e79027d12b370e9fa79a569f7c532968be91ecfd3b81660d39abe50ab3"

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
