cask "black-ink" do
  version "2.2.2,3194"
  sha256 "4ba83ed5b73049255eb9a6d33a5f2543c9256c48cf14c2d8b2ca8587c5fe4452"

  url "https://redsweater.com/blackink/BlackInk#{version.csv.first}.zip"
  name "Black Ink"
  desc "Download, solve, and print crossword puzzles"
  homepage "https://redsweater.com/blackink/"

  livecheck do
    url "https://redsweater.com/blackink/appcast#{version.major}.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Black Ink.app"

  zap trash: [
    "~/Library/Application Scripts/com.red-sweater.blackink#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.blackink#{version.major}.sfl*",
    "~/Library/Containers/com.red-sweater.blackink#{version.major}",
  ]
end
