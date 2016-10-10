cask 'creepy' do
  version '1.4.1'
  sha256 'c500216420cb32b7779f20726bc838868c4424d234b9dc7f076d083b317b5450'

  # github.com/jkakavas/creepy was verified as official when first introduced to the cask
  url "https://github.com/jkakavas/creepy/releases/download/v#{version}/cree.py_#{version}.dmg.zip"
  appcast 'https://github.com/jkakavas/creepy/releases.atom',
          checkpoint: '7e6a4adab2f72f4be25e9d15dd1a1d2a94d87e2276a6d6bd6c7384d152ba12e9'
  name 'Creepy'
  homepage 'http://www.geocreepy.com/'

  app 'cree.py.app'
end
