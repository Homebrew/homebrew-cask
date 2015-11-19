cask :v1 => 'macid' do
  version '1.3'
  sha256 '6fb7fdc60b2c6dbce711263cea72ef1044e1527eae42efed7df23a172eec0b38'

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
