cask 'macid' do
  version '1.3.5'
  sha256 'fdb37485748ad774e6e78e5d9134ce355aa5227e2926206a0e2314cc660ae452'

  url "https://macid.co/app/#{version}/MacID%20for%20macOS.zip"
  name 'MacID'
  homepage 'https://macid.co/'

  depends_on macos: '>= :yosemite'

  app 'MacID.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
