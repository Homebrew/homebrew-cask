cask :v1 => 'puzzles' do
  version :latest
  sha256 :no_check

  url 'http://www.chiark.greenend.org.uk/~sgtatham/puzzles/Puzzles.dmg'
  homepage 'http://www.chiark.greenend.org.uk/~sgtatham/puzzles/'
  license :mit

  app 'Puzzles.app'
end
