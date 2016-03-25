cask 'macid' do
  version '1.3.1.3'
  sha256 '26277a3493af134483704aaf35315d2a1a098cafdaded9a088aea4f4391f89c5'

  url "https://macid.co/app/#{version}/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'https://macid.co/'
  license :gratis

  depends_on macos: '>= :yosemite'

  app 'MacID.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
