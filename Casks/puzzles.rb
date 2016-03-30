cask 'puzzles' do
  version :latest
  sha256 :no_check

  url 'http://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg'
  name 'Simon Tatham\'s Portable Puzzle Collection'
  homepage 'http://www.chiark.greenend.org.uk/~sgtatham/puzzles/'
  license :mit

  app 'Puzzles.app'
end
