cask :v1 => 'markright' do
  version '0.1.8'
  sha256 '2a5c875a34bbe43ff1ef7cb47d377009ee5e11ac2d84381d4c5d085b7a99f4dc'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
