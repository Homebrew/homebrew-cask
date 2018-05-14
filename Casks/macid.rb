cask 'macid' do
  version '2.0.2'
  sha256 '20a5fa4b1120f23b99a8ee3171d06c6a3e75797a40216e7e480f860ff19d3da0'

  url 'https://unlox.it/download/'
  name 'Unlox'
  homepage 'https://unlox.it/'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'

  zap trash: '~/Library/Preferences/com.kanecheshire.macID-macOS.plist'
end
