cask 'puzzles' do
  version :latest
  sha256 :no_check

  url 'https://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg'
  name 'Simon Tatham\'s Portable Puzzle Collection'
  homepage 'https://www.chiark.greenend.org.uk/~sgtatham/puzzles/'

  app 'Puzzles.app'
end
