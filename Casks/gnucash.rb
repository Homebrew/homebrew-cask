cask "gnucash" do
  version "4.10-3"
  sha256 "398f761690854ae54c7741c23e9ec4f0cf72bb1021c918e7c6b36786cbadb4d6"

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
