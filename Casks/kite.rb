cask 'kite' do
  version '0.20181009.0'
  sha256 '5f3b74a1c9045c9c45cfdfb365eee7198c41e78be1d96d985fed233464a8f0a2'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
