cask "black-ink" do
  version "2.2.7"
  sha256 "172cf86870bc7ce8ce3cff7392df2bffe0378a27898e65331f5caf9498ebc4b8"

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
