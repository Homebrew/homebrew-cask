cask 'mountain-duck' do
  version '1.8.2.6516'
  sha256 '49912561f04c8b0660e2586e759591d70270d1fcc2cff872f64fec59770a1681'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '91dc850cd29646d247c414c1be6f1df33059ca80dde1cff73bfc3bfed623a1c7'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
