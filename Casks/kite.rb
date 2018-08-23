cask 'kite' do
  version '0.20180822.0'
  sha256 '764e83c1d625a555f7d30a6b6c330d28f4623ec16c5fa4e216cd8bc62e8a938a'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
