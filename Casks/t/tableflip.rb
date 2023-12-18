cask "tableflip" do
  version "1.5.1"
  sha256 "20e86bfccd97e78ab8c8692f982abd98eca4a4fb743a5894f904b32d0eaf14d6"

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
