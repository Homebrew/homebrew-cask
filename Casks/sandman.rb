cask 'sandman' do
  version '1.9.2'
  sha256 '0a85754b845f09b114c051be50980aa3098f87cfe09bc2f0ed7a091f87266233'

  # github.com/alexanderepstein/Sandman was verified as official when first introduced to the cask
  url "https://github.com/alexanderepstein/Sandman/releases/download/v#{version}/Sandman-#{version}.dmg"
  appcast 'https://github.com/alexanderepstein/Sandman/releases.atom',
          checkpoint: 'b6bc71dd796dc5d37028616ccd320bb9654a6c8ed740c73761af8ef512d4a890'
  name 'Sandman'
  homepage 'https://alexanderepstein.github.io/Sandman/'

  app 'Sandman.app'
end
