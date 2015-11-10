cask :v1 => 'markright' do
  version '0.1.5'
  sha256 '3631f805285293e2653fe5e5d96c975f85b145ad841694661ec9cd572b2907d5'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
