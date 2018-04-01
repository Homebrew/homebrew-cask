cask 'mountain-duck' do
  version '2.3.0.9118'
  sha256 'bb5ee46091d9d91b87daafbdb3d68dfc54bf1e8b02aa62cd744ef41ccf31d5ad'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'c0b1ce0d7e8af2dbb4b4259fd6ef91ef9e05e4971e378ff814cff75594ef0f9c'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
