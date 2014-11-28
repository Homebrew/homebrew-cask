cask :v1 => 'mnemosyne' do
  version '2.3'
  sha256 '094c4f6fb50de376a5190c3712b935089579717641ce90685aa48932bf0efa07'

  url "https://downloads.sourceforge.net/sourceforge/mnemosyne-proj/Mnemosyne-#{version}-Mac.dmg"
  homepage 'http://mnemosyne-proj.org/'
  license :oss

  app 'Mnemosyne.app'
end
