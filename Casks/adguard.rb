cask 'adguard' do
  version '1.3.0'
  sha256 'eb8f1fbb8e0ddf31f46eae39a571bee6d1237a1cdda0fa245bb21a85c2e32c25'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: 'a934745bff30fa64ca202744b91a9c11dad69e60e84bf905aa4e118754fa993c'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'
end
