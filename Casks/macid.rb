cask 'macid' do
  version '1.3.3'
  sha256 '0248b644616077bc65809583cc19d9e5c1149d15ef6cb5625379058c87757aab'

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
