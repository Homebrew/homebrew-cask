cask 'markright' do
  version '0.1.11'
  sha256 '2d293121534a468e5f166e18eaa28f8db7e39a617b092e06c0d8b339191d9f47'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom',
          checkpoint: '22f02dc7556d19456dcd5f7aed4c9ed078db8b26d0890ba950b60a81fde542ab'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'

  app 'MarkRight.app'
end
