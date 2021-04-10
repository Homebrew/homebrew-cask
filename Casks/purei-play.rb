cask "purei-play" do
  version "6ce95b5f"
  sha256 :no_check

  url "https://s3.us-east-2.amazonaws.com/playbuilds/#{version)/Play.dmg",
      verified: "https://s3.us-east-2.amazonaws.com/playbuilds/"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url "https://purei.org/downloads.php"
    strategy :page_match
    regex(%r{href=.*?/([0-9a-f]+)/Play\.dmg}i)
  end

  app "Play.app"
end
