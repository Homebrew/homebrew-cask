cask "tableflip" do
  version "1.5.0"
  sha256 "ee4b8dc746f5bdde13ca81a7e61e54602b753ccde8c740db495bba63c023bd9a"

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
