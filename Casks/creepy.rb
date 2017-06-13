cask 'creepy' do
  version '1.4.1'
  sha256 'c500216420cb32b7779f20726bc838868c4424d234b9dc7f076d083b317b5450'

  # github.com/jkakavas/creepy was verified as official when first introduced to the cask
  url "https://github.com/jkakavas/creepy/releases/download/v#{version}/cree.py_#{version}.dmg.zip"
  appcast 'https://github.com/jkakavas/creepy/releases.atom',
          checkpoint: 'f6b7733a0ba803c626be8f77deea458e1d31fdbfd85d5037c38ac1ddf09f454d'
  name 'Creepy'
  homepage 'http://www.geocreepy.com/'

  app 'cree.py.app'
end
