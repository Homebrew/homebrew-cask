cask :v1 => 'mnemosyne' do
  version '2.3'
  sha256 '094c4f6fb50de376a5190c3712b935089579717641ce90685aa48932bf0efa07'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/mnemosyne-proj/Mnemosyne-#{version}-Mac.dmg"
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'
  license :gpl

  app 'Mnemosyne.app'
end
