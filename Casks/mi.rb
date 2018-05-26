cask 'mi' do
  version '3.0.0'
  sha256 '6239a38e289a00555341ee55dbc97d99a11a1fca9b4f1724fac194df73167727'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name 'mi'
  homepage 'https://www.mimikaki.net/'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
