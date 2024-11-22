cask "tableflip" do
  version "1.7.0"
  sha256 "63ddd81524d22477176936492a34175d65bfb18ef00d2aa069badd0afddf639c"

  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip",
      verified: "update.christiantietze.de/tableflip/"
  name "TableFlip"
  desc "Edit plain text tables in place: Markdown, CSV, JSON. LaTeX and HTML export"
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
