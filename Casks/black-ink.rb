cask "black-ink" do
  version "2.2.6"
  sha256 "d480dfc0096013396d226edddf7476c640feb9ea58dfa7e5bcd48d802d8dabe4"

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
