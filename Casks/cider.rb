cask "cider" do
  version "1.5.7"
  sha256 "3f3b3cf14eeb6716a04dc3375ae0a3942fd74e2f2f4bc6bfff16c0c08d0cfd5c"

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
