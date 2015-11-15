cask :v1 => 'markright' do
  version '0.1.7'
  sha256 '5cb5ddbc2f1684d164b9afa80f34341d4650b4cf4ac12d9cceccb8a7e3d8c9cc'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
