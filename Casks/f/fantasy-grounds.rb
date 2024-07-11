cask "fantasy-grounds" do
  version :latest
  sha256 :no_check

  url "https://www.fantasygrounds.com/filelibrary/FantasyGrounds.dmg"
  name "Fantasy Grounds"
  homepage "https://www.fantasygrounds.com/home/home.php"

  livecheck do
    skip "unversioned WineSkin application"
  end

  app "Fantasy Grounds.app"

  zap trash: "~/Library/Saved Application State/Fantasy Grounds*"

  caveats do
    requires_rosetta
  end
end
