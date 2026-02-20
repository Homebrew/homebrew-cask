cask "black-ink" do
  version "2.4.6"
  sha256 "2de51726a36b670f58318507aa5966c82b6385cae1e5c26eb7b79a54ad90d994"

  url "https://redsweater.com/blackink/BlackInk#{version}.zip"
  name "Black Ink"
  desc "Download, solve, and print crossword puzzles"
  homepage "https://redsweater.com/blackink/"

  livecheck do
    url "https://redsweater.com/blackink/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Black Ink.app"

  zap trash: [
    "~/Library/Application Scripts/com.red-sweater.blackink#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.blackink#{version.major}.sfl*",
    "~/Library/Containers/com.red-sweater.blackink#{version.major}",
  ]
end
