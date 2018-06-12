cask 'mountain-duck' do
  version '2.5.1.9399'
  sha256 '3b755983f5ec2c5c4c8e34217cd2b4064cb0b43d054b7c008f199e288b3c51db'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
