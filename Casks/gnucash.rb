cask "gnucash" do
  version "4.10-4"
  sha256 "b357f0520e7137f6bb1a257898039599640ec5d69c97281ba6106e780331b10d"

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
