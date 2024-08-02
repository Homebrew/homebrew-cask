cask "puzzles" do
  version "20240802"
  sha256 :no_check

  url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg"
  name "Simon Tatham's Portable Puzzle Collection"
  desc "Collection of small computer programmes which implement one-player puzzle games"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/"

  livecheck do
    url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/devel/"
    regex(/collection,\s+version\s+(\d+)\.\w+/i)
    strategy :page_match do |page, regex|
      # Throttle updates to one every 2 days.
      next version if Date.parse(version) + 2 > Date.today

      page[regex, 1]
    end
  end

  app "Puzzles.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Puzzles Help*",
    "~/Library/Saved Application State/uk.org.greenend.chiark.sgtatham.puzzles.savedState",
  ]
end
