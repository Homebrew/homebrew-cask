cask :v1 => 'markright' do
  version '0.1.9'
  sha256 '8288b2867916189195ae0a4638db45e8d1e4dae16600e202fa9ed072a0cd3604'

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast 'https://github.com/dvcrn/markright/releases.atom'
  name 'MarkRight'
  homepage 'https://github.com/dvcrn/markright'
  license :gpl

  app 'MarkRight.app'
end
