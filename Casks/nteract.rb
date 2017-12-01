cask 'nteract' do
  version '0.4.2'
  sha256 '848513a52554888c096c648866c281f57b481b831e40ce652b6a91e165302326'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'df4f60423863e4a7239e99e8cb60ead047b0dad023922f111881193f5168ef9c'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
