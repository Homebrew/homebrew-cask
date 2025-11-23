cask "fantasy-grounds" do
  version :latest
  sha256 :no_check

  url "https://www.fantasygrounds.com/filelibrary/FantasyGrounds.dmg"
  name "Fantasy Grounds"
  homepage "https://www.fantasygrounds.com/home/home.php"

  deprecate! date: "2025-03-15", because: :discontinued

  app "Fantasy Grounds.app"

  zap trash: "~/Library/Saved Application State/Fantasy Grounds*"

  caveats do
    requires_rosetta
  end
end
