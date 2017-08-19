cask 'championify' do
  version '2.0.7'
  sha256 '4e1d3a5c8a3c62bd2b1c7683f895c796532867b6e82b885dbbe0b34b52c506b6'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: 'e1d0e3de98c194fae1fd3a5bc5e147d9e7251ec9f63121c2fef08ccae7cb315b'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
