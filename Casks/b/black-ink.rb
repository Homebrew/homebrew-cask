cask "black-ink" do
  version "2.2.9"
  sha256 "2d0a0d45b73a6424ab5b2e0f2b53442d8efa1158e549447951c4aeb9db210ef7"

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
    "~/Library/Application Scripts/com.red-sweater.blackink#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.blackink#{version.major}.sfl*",
    "~/Library/Containers/com.red-sweater.blackink#{version.major}",
  ]
end
