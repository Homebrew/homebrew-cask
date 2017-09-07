cask 'mountain-duck' do
  version '2.0.0.8014'
  sha256 '65b0662f4bcef00a89c66e79d494018e8d5b149dc363d5610695d56e90646753'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'ddd141012250ba0f4817bd3f1318c08eda359590716a18eb82a001b91941398d'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
