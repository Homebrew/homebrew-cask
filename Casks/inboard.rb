cask 'inboard' do
  version '1.1.4-421'
  sha256 '79a91ed1f899d360b2f2bafce22abce1902e9e402b893adf8b06cac4c7fd4476'

  url "https://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'https://inboardapp.com/appcast.xml'
  name 'Inboard'
  homepage 'https://inboardapp.com/'

  app 'Inboard.app'
end
