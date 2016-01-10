cask 'creepy' do
  version '1.4.1'
  sha256 'c500216420cb32b7779f20726bc838868c4424d234b9dc7f076d083b317b5450'

  url "https://github.com/jkakavas/creepy/releases/download/v1.4.1/cree.py_#{version}.dmg.zip"
  name 'Creepy'
  homepage 'http://www.geocreepy.com/'
  license :gpl

  container :nested => 'cree.py 1.4.dmg'

  app 'cree.py.app'
end
