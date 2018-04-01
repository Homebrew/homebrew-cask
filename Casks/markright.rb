cask 'markright' do
  version '0.1.11'
  sha256 '2d293121534a468e5f166e18eaa28f8db7e39a617b092e06c0d8b339191d9f47'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom',
          checkpoint: '390d273e0e50e5560cb447d2a3f6efbd4742fd82a18c6a7ee6345075357b5fc9'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'

  app 'MarkRight.app'
end
