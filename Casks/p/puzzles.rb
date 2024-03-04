cask "puzzles" do
  version "20240302"
  sha256 :no_check

  url "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg"
  name "Simon Tatham's Portable Puzzle Collection"
  desc "Collection of small computer programmes which implement one-player puzzle games"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/puzzles/"

  # see discussions in https://github.com/Homebrew/homebrew-core/pull/164944#issuecomment-1975508329
  deprecate date: "2024-03-03", because: "in favor of core tap formula"

  app "Puzzles.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Puzzles Help*",
    "~/Library/Saved Application State/uk.org.greenend.chiark.sgtatham.puzzles.savedState",
  ]

  caveats do
    <<~EOS
      Please use core tap formula instead of this cask:

        brew install puzzles
    EOS
  end
end
