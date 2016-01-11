cask 'creepy' do
  version '1.4.1'
  sha256 'c500216420cb32b7779f20726bc838868c4424d234b9dc7f076d083b317b5450'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jkakavas/creepy/releases/download/v#{version}/cree.py_#{version}.dmg.zip"
  appcast 'https://github.com/jkakavas/creepy/releases.atom',
          :sha256 => '9833afcf3b027d02970bc72454103a21a4163a1d8b6dcc88b60e3b929170ae6d'
  name 'Creepy'
  homepage 'http://www.geocreepy.com/'
  license :gpl

  container :nested => "cree.py #{version}.dmg"

  app 'cree.py.app'
end
