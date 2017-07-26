cask 'mountain-duck' do
  version '1.9.6.7308'
  sha256 '0ee5b9e0e3326626b527462574892e315bcf7857b203d45d88a54b27aad00c9c'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '76519ffe9ebed19b3aa3744c30bfbf44e366c7cac71e45e7e9e097904774d3c1'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
