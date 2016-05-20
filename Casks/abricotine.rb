cask 'abricotine' do
  version '0.3.2'
  sha256 'c247842d744180d7879e1d9c9f1c066fbd3606dd9fa142835f85206ce99ab57e'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: '370f31370e2a0c860542b55301517bbde98588bd190722b49d44daa93c910610'
  name 'abricotine'
  homepage 'http://abricotine.brrd.fr'
  license :gpl

  app 'Abricotine.app'
end
