cask 'ridibooks' do
  version '0.7.10'
  sha256 'a704bffbacb5bff9e4beee8c0db255937bbfbda33f2ee3b52cc1f0536b9279ee'

  # viewer-ota.ridicdn.net/pc_electron was verified as official when first introduced to the cask
  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}.dmg"
  appcast 'https://s3-ap-northeast-2.amazonaws.com/viewer-ota.ridicdn.net/pc_electron/latest-mac.yml'
  name 'Ridibooks'
  homepage 'https://ridibooks.com/support/app/download'

  depends_on macos: '>= :sierra'

  app 'Ridibooks.app'

  zap trash: [
               '~/Library/Application Support/RIDI',
               '~/Library/Preferences/com.ridibooks.Ridibooks.plist',
             ]
end
