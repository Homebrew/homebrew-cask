cask "puzzles" do
  version "20210409.69b5e75"
  sha256 :no_check

  url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg"
  name "Simon Tatham's Portable Puzzle Collection"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Puzzles.app"
end
