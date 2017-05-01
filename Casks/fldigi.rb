cask 'fldigi' do
  version '4.0.3'
  sha256 '10ede0d058dc1c1887a6cfc9f8ffa6845dd02be52b76cc622937f0e5be2b6bc0'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '48e0dbed30c72fd68197d712b0771560ece6e2cbb259ec80e9d7782528b0da43'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
