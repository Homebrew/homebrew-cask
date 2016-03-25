cask 'rightfont' do
  version '3.2.0'
  sha256 '21e4d9b203a49fbafa09cf04218b72a9511c3713604f3783f660bbf724a1b9bf'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          checkpoint: 'ee63bef61fdff2f19b7802547db2eb5e594d12e3e045eb548e18cc89b7d8bccc'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
