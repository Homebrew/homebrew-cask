cask "black-ink" do
  version "2.1.9,2788"
  sha256 "652c35510f38fda9051052c989baff31f54e0d23d39ed676e43d03699a3db51c"

  url "https://redsweater.com/blackink/BlackInk#{version.before_comma}.zip"
  name "Black Ink"
  desc "Download, solve, and print crossword puzzles"
  homepage "https://redsweater.com/blackink/"

  livecheck do
    url "https://redsweater.com/blackink/appcast2.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Black Ink.app"
end
