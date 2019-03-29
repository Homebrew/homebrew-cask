cask 'flirc' do
  version '3.22.2'
  sha256 '691aeed9020a4eeb937b4ec39c0abb1a649e8cf969b53c9b5621ef882e3af1f4'

  url 'https://flirc.tv/software/release/gui/mac/Flirc.dmg'
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
