cask 'balsamiq-mockups' do
  version '3.3.5'
  sha256 '67cded025ca358b60e8a31c8efe62ed4c2009fedbea86e4038a0eeb157bdf2ca'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"

  zap :delete => '~/Library/Preferences/BalsamiqMockups3'
end
