cask 'markright' do
  version '0.1.10'
  sha256 'e0466e92e0ed10605b8cf4b5d178de096b662455585c9fe4ef08209d9ed458e7'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom',
          checkpoint: '617a2e63a4457ba76ff82dcd25ed979cab07607ef6ef0521a725570c1a1e9944'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
