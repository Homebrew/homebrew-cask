cask "purei-play" do
  version "0.39-9-g6ce95b5f,01-04-2021"
  sha256 :no_check

  url "https://purei.org/download_latest.php?platform=macos"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Play.app"
end
