cask "cider" do
  version "1.6.1"
  sha256 "16d84f5b5a649dfe4c442fca9f8eaa126cfcc665ceab4509ef82f33e3c202365"

  url "https://github.com/ciderapp/Cider/releases/download/v#{version}/Cider-#{version}.dmg",
      verified: "github.com/ciderapp/Cider/"
  name "Cider"
  desc "Open source and community oriented Apple Music client"
  homepage "https://cider.sh/"

  # Only some beta releases are labeled as "pre-release", so we
  # can't use the `GithubLatest` strategy here.
  livecheck do
    url "https://github.com/ciderapp/Cider/releases?q=prerelease%3Afalse"
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
