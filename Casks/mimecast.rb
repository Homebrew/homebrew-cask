cask 'mimecast' do
  version '2.10,87301327:6013e89f434a2ce2aeb6'
  sha256 '0c57d1daf2298dc067c73b09ee556b894111d0afd978dd5743b306f02e9782dd'

  # system.na3.netsuite.com was verified as official when first introduced to the cask
  url "https://system.na3.netsuite.com/core/media/media.nl?id=#{version.after_comma.before_colon}&c=601905&h=#{version.after_colon}"
  appcast 'http://updates-us.mimecast.com/update/descriptors/msm/latest'
  name 'Mimecast for Mac'
  homepage 'https://community.mimecast.com/community/knowledge-base/mimecast-for-mac'

  depends_on macos: '>= :sierra'

  app 'Mimecast.app'

  zap trash: [
               '~/Library/Preferences/com.mimecast.Mimecast-Mail.plist',
               '~/Library/com.mimecast.Mimecast-Mail',
               '~/Library/Logs/Mimecast',
             ]
end
