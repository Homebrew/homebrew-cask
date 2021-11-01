cask "gnucash" do
  version "4.8-2"
  sha256 "20af888f1d1293a036b595145ad9e5338b3a92f868b6e4fca021d4cc7d9df36b"

  url "https://github.com/Gnucash/gnucash/releases/download/#{version.hyphens_to_dots.major_minor}/Gnucash-Intel-#{version}.dmg",
      verified: "github.com/Gnucash/gnucash/"
  name "GnuCash"
  desc "Double-entry accounting program"
  homepage "https://www.gnucash.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*/Gnucash-Intel-v?(\d+\.\d+-\d+)\.dmg}i)
  end

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
