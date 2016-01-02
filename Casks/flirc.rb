cask 'flirc' do
  version :latest
  sha256 :no_check

  url 'http://downloads.flirc.tv/release/gui/mac/Flirc.dmg'
  name 'Flirc'
  homepage 'https://flirc.tv'
  license :gratis

  app 'Flirc.app'
end
