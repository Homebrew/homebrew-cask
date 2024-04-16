cask "popsql" do
  arch arm: "-arm64"

  version "1.0.128"
  sha256 arm:   "31dafb58a7f5ec8d21a713aaf346fc6d5f483e59f560065bdbc013cf8168e81c",
         intel: "e897fdeca98f23b2b9478f56892c842a0c181bdac745822fe78c13568ab12bf9"

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
