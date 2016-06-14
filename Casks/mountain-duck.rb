cask 'mountain-duck' do
  version '1.4.2.4044'
  sha256 'cdaf43773b06497fa3577fc1df7cf1abe5b2565d89d3c7e01c41c44af3c11583'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '980e2f713c38ab0e25a01cb405ddbbd703ccf25c2b2e9bb4b126ae9053af84d3'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
