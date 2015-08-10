cask :v1 => 'macid' do
  version '1.2.3'
  sha256 '2ffb38c1df5bf5f0368e0f80e867be72b849f8062c7da6361263bef14db1974d'

  url "https://macid.co/app/#{version}/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'https://macid.co/'
  license :gratis

  app 'MacID.app'

  postflight do
    suppress_move_to_applications
  end

  depends_on :macos => '>= :yosemite'

  zap :delete => '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
