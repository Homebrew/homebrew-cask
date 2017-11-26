cask 'macid' do
  version '1.3.6'
  sha256 'b13c7018e073007ec5ad2e2b8573b0d1dae7d7be77fb380ac0055ba269fdf80b'

  url "https://macid.co/app/#{version}/MacID%20for%20macOS.zip"
  name 'MacID'
  homepage 'https://macid.co/'

  depends_on macos: '>= :yosemite'

  app 'MacID.app'

  zap trash: '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
