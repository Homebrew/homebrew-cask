cask "popsql" do
  arch arm: "-arm64"

  version "1.0.134"
  sha256 arm:   "3d4fba78102359cca2f5d230f3dfa69c5c4522d1444b3459d0c1f6feff10915c",
         intel: "0f87dbd318401a4b181c77e21a23aeb807184c837152d20db66d3770f9c0c8b9"

  url "https://popsql-releases.s3.amazonaws.com/mac/PopSQL-#{version}#{arch}.dmg",
      verified: "popsql-releases.s3.amazonaws.com/"
  name "PopSQL"
  desc "Collaborative SQL editor"
  homepage "https://popsql.com/"

  livecheck do
    url "https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "PopSQL.app"

  zap trash: [
    "~/.popsql.json",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.electron.popsql.sfl*",
    "~/Library/Application Support/PopSQL",
    "~/Library/Preferences/org.electron.popsql.plist",
    "~/Library/Saved Application State/org.electron.popsql.savedState",
  ]
end
