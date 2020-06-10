cask 'alfaview' do
  version '8.5.0'
  sha256 'ead929fb5bd30dc1874606e770f66199510e97408a3ddd1c0e6a24cca89b094e'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://production-alfaview-assets.alfaview.com/stable/mac/version.info'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end
