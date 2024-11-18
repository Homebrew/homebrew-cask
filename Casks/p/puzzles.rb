cask "puzzles" do
  version "20241108"
  sha256 :no_check

  url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg"
  name "Simon Tatham's Portable Puzzle Collection"
  desc "Collection of small computer programmes which implement one-player puzzle games"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/"

  deprecate! date: "2024-11-18", because: :discontinued

  app "Puzzles.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Puzzles Help*",
    "~/Library/Saved Application State/uk.org.greenend.chiark.sgtatham.puzzles.savedState",
  ]

  caveats do
    <<~EOS
      This cask has been deprecated in favor of the core tap formula.

        brew install #{token}
    EOS
  end
end
