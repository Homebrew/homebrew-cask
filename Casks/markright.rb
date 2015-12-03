cask :v1 => 'markright' do
  version '0.1.10'
  sha256 'e0466e92e0ed10605b8cf4b5d178de096b662455585c9fe4ef08209d9ed458e7'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
