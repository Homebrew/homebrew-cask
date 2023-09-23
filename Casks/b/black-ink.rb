cask "black-ink" do
  version "2.2.8"
  sha256 "45c971e5675841332b2ce7a01a7b7937dc5a6e8a79ab4cf1dfe27a2124186538"

  url "https://redsweater.com/blackink/BlackInk#{version}.zip"
  name "Black Ink"
  desc "Download, solve, and print crossword puzzles"
  homepage "https://redsweater.com/blackink/"

  livecheck do
    url "https://redsweater.com/blackink/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Black Ink.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.blackink#{version.major}.sfl*",
    "~/Library/Application Scripts/com.red-sweater.blackink#{version.major}",
    "~/Library/Containers/com.red-sweater.blackink#{version.major}",
  ]
end
