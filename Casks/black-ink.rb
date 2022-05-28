cask "black-ink" do
  version "2.2.3,3230"
  sha256 "38e2ae2e634791633a4fe93b2afa84d23dc40d7e0cdb2baf30cd621137fc8af9"

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
