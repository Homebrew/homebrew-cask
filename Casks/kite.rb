cask 'kite' do
  version '0.20171214.0'
  sha256 '9b2bf75749900c3682d458d6f228a1163e134344d9dff395d1f5606ffbba9bee'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '70a8f62f1aa1d21c9903eb66f7d91fd73516cfdd26cbc31b5e64454ba962a4d4'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
