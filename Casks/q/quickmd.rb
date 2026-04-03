cask "quickmd" do
  version "1.4.1"
  sha256 "04f3d3cf53c441cfdd0084d2a50d8343effd272b4fcc86ac6f886939861e186f"

  url "https://github.com/b451c/quickmd/releases/download/v#{version}/QuickMD-v#{version}.zip",
      verified: "github.com/b451c/quickmd/"
  name "QuickMD"
  desc "Lightning-fast native Markdown viewer"
  homepage "https://qmd.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "QuickMD.app"

  zap trash: [
    "~/Library/Preferences/pl.falami.studio.QuickMD.plist",
    "~/Library/Saved Application State/pl.falami.studio.QuickMD.savedState",
  ]
end
