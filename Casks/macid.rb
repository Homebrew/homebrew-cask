cask 'macid' do
  version '1.3.7'
  sha256 '788a081b6346c861472af9ad8e5e2f7ef172247e235aa93d5f2a89fe97d5cb82'

  url "https://macid.co/app/#{version}/MacID%20for%20macOS.zip"
  name 'MacID'
  homepage 'https://macid.co/'

  depends_on macos: '>= :yosemite'

  app 'MacID.app'

  zap trash: '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
