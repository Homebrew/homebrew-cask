cask 'fldigi' do
  version '4.0.16'
  sha256 '2105929d385a192f1e0168be1a6697234cf5998ce8902297ca8d1786b4b801e2'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
