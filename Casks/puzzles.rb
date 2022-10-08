cask "puzzles" do
  version "20221008.85d2a7d"
  sha256 :no_check

  url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg"
  name "Simon Tatham's Portable Puzzle Collection"
  desc "Collection of small computer programs which implement one-player puzzle games"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Puzzles.app"
end
