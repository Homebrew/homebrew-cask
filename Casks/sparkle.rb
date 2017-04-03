cask 'sparkle' do
  version '1.17.0'
  sha256 'aa5024b76a1c76326115d114c96a6efc4b68e593dde22142a98d861dd44965b5'

  # github.com/sparkle-project/Sparkle was verified as official when first introduced to the cask
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: '472d80c2eccded64b98486f6cf166d69fdab88214056de4119b40f4924ea9851'
  name 'Sparkle'
  homepage 'https://sparkle-project.org/'

  app 'Sparkle Test App.app'
end
