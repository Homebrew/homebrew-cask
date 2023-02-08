cask "cider" do
  version "1.6.0"
  sha256 "eb133236dccbf521fbb31371050d11e9ec7ce30ac15f7d9a0581d5a521d0e7ba"

  url "https://github.com/ciderapp/cider-releases/releases/download/v#{version}/Cider-#{version}-universal.dmg",
      verified: "github.com/ciderapp/cider-releases"
  name "Cider"
  desc "Open source and community oriented Apple Music client"
  homepage "https://cider.sh/"

  # Only some beta releases are labeled as "pre-release", so we
  # can't use the `GithubLatest` strategy here.
  livecheck do
    url "https://github.com/ciderapp/cider-releases/releases?q=prerelease%3Afalse"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :page_match
  end

  auto_updates true

  app "Cider.app"

  zap trash: [
    "~/Library/Application Support/Cider",
    "~/Library/Logs/Cider",
    "~/Library/Preferences/cider.plist",
    "~/Library/Saved Application State/cider.savedState",
  ]
end
