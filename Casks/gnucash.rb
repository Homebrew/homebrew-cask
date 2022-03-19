cask "gnucash" do
  version "4.9-1"
  sha256 "ac288ffa06a759d6104b74f9c91449ce218de392ac8ca4739bce217e2f9817b1"

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
