cask 'kite' do
  version '0.20190911.0'
  sha256 '6f2cea973cb780d9905e172af7baa2f28eaf75591a5499a63386842e78e885db'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
