cask 'championify' do
  version '2.1.5'
  sha256 '4069269c30c2aa2c150a1613bc7e55827ac6464a6d814be6a50c8e2404edb160'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
