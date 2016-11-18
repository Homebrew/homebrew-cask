cask 'isubtitle' do
  version '2.9.1.1'
  sha256 '81396f37915786fe61bb37441e489196095c4ac0de2f4613a724171ab5ac718c'

  url "http://www.bitfield.se/isubtitle/download/iSubtitle_#{version}.zip"
  appcast 'http://www.bitfield.se/isubtitle/changelog.xml',
          checkpoint: '6abb72847d2408a95753b0668142a964fc2cdd982779c8b7f17c990afe486f39'
  name 'iSubtitle'
  homepage 'http://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
