cask 'makerlog-menubar' do
  version '1.0.0'
  sha256 'a222d3ad5aee74fa2c7ed5892eeada373223d3eedbac7d82e5647fb5aa5d97b2'

  # github.com/Booligoosh/makerlog-menubar/ was verified as official when first introduced to the cask
  url 'https://github.com/Booligoosh/makerlog-menubar/releases/download/v1.0.0/Makerlog-Menubar-for-Mac-v1.0.0.zip'
  appcast 'https://github.com/Booligoosh/makerlog-menubar/releases.atom'
  name 'Makerlog Menubar'
  homepage 'https://menubar.getmakerlog.com/'

  app ''
end
