cask 'mountain-duck' do
  version '1.6.0.4947'
  sha256 '46ddf9eb34607dfe9717b871957ec275ffd230d5bd2af7a4ce3c660e11764259'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '31d74a9e3133ea63ce6f0ea536fbda5efc910792b6762b2e9ff8b0851017818c'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
