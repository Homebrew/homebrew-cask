cask 'suitcase-fusion' do
  version '9,20.0.2'
  sha256 '1daab2f2065a7d3a07fac0dc32f217ff409d7cd891c4792911d85acabecde356'

  url "http://bin.extensis.com/sf#{version.before_comma}-#{version.after_comma}-m-all.zip"
  appcast "https://sparkle.extensis.com/u/ST/EN/suitcase#{version.after_comma.major}en.xml"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/'

  depends_on macos: '>= :sierra'

  app 'Suitcase Fusion.app'
end
