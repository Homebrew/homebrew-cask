cask :v1 => 'macid' do
  version '1.2.5'
  sha256 'e95661227bc2dd638ee77d1027d70986dbbb8155cc6c60baa5d420c318530120'

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
