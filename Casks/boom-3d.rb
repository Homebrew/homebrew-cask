cask 'boom-3d' do
  version '1.3.6'
  sha256 'f3ba9b6c05dc2db2ab347f46b08f7470e49ff684729a1cb90c1172191a65b17f'

  # d3jbf8nvvpx3fh.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d3jbf8nvvpx3fh.cloudfront.net/Boom3D/Update/v#{version}/Boom_3D_Update.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://apiboom3.globaldelight.net/v1/native/queryupdate/&data={%22AppIdentifier%22:%22com.globaldelight.Boom3D%22,%22ApplicationVersion%22:%221.3.3%22,%22AppVersion%22:%22101.3.3018%22,%22ApplicationId%22:%22com.globaldelight.Boom3D%22,%22RequestType%22:0,%22AppName%22:%22Boom%203D%22}'
  name 'Boom 3D'
  homepage 'https://www.globaldelight.com/boom/'

  depends_on macos: '>= :yosemite'

  app 'Boom 3D.app'

  uninstall launchctl: [
                         'com.globaldelight.Boom3D',
                         'com.globaldelight.Boom3DHelper',
                       ],
            quit:      'com.globaldelight.Boom3D'

  zap trash: [
               '~/Library/Application Support/Boom3D',
               '~/Library/Application Support/com.globaldelight.Boom3D',
               '~/Library/Preferences/com.globaldelight.Boom3D.plist',
               '~/Library/Preferences/com.globaldelight.Boom3DHelper.plist',
             ]
end
