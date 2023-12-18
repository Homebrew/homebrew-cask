cask "black-ink" do
  version "2.2.8"
  sha256 "bfa2465badbd22bf0f08b87136c992a9259fd2fa05b9482df27674c3ab1df19f"

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
