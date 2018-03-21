cask 'championify' do
  version '2.1.5'
  sha256 '4069269c30c2aa2c150a1613bc7e55827ac6464a6d814be6a50c8e2404edb160'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '63d0db65b3ab75faf5c15ad7ac30971b73acbd6c210f5b3e1b36ca400bd20218'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
