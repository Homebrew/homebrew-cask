cask "tableflip" do
  version "1.6.2"
  sha256 "82acda5a9fb783f193db9783d96faddfbfb878c856fed202055e9e41ffe82005"

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
