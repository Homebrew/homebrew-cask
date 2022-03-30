cask "gnucash" do
  version "4.10-2"
  sha256 "6fc79d00c292e8672485207d0f4d04918efd9af63142695db8ec113d3e398aa6"

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
