cask "tableflip" do
  version "1.6.1"
  sha256 "501d2b3dd08bb57f3d5c8b0d2860d21e970b1cf1ca5783a80022083836404ae0"

  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip",
      verified: "update.christiantietze.de/tableflip/"
  name "TableFlip"
  desc "App to edit markdown files in place"
  homepage "https://tableflipapp.com/"

  livecheck do
    url "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TableFlip.app"

  zap trash: [
    "~/Library/Application Scripts/de.christiantietze.TableFlip",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.christiantietze.tableflip.*",
    "~/Library/Containers/de.christiantietze.TableFlip",
  ]
end
