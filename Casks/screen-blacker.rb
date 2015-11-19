cask :v1 => 'screen-blacker' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/Figure53/ScreenBlacker/ScreenBlacker.zip'
  name 'Screen Blacker'
  homepage 'https://github.com/Figure53/ScreenBlacker'
  license :mit

  app 'Screen Blacker.app'
end
