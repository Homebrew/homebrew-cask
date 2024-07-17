cask "black-ink" do
  version "2.3.2"
  sha256 "3e53a33fc5cf811ab9dc44970ade32a0b239c49f4a58496f2395734cc04059e9"

  url "https://redsweater.com/blackink/BlackInk#{version}.zip"
  name "Black Ink"
  desc "Download, solve, and print crossword puzzles"
  homepage "https://redsweater.com/blackink/"

  livecheck do
    url "https://redsweater.com/blackink/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Black Ink.app"

  zap trash: [
    "~/Library/Application Scripts/com.red-sweater.blackink#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.blackink#{version.major}.sfl*",
    "~/Library/Containers/com.red-sweater.blackink#{version.major}",
  ]
end
