cask "puzzles" do
  version "20230402.0bd1a80"
  sha256 :no_check

  url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg"
  name "Simon Tatham's Portable Puzzle Collection"
  desc "Collection of small computer programs which implement one-player puzzle games"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/"

  livecheck do
    url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/devel/"
    regex(/collection,\sversion\s(\d+(?:\.[\d\w]+)+)/i)
  end

  app "Puzzles.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Puzzles Help*",
    "~/Library/Saved Application State/uk.org.greenend.chiark.sgtatham.puzzles.savedState",
  ]
end
