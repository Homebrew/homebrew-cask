cask :v1 => 'balsamiq-mockups' do
  version '3.2.4'
  sha256 '1980c14936c4afe1afe4f1406465903e622fdf73d5cd9f6349480d6f551f3275'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"

  zap :delete => '~/Library/Preferences/BalsamiqMockups3'
end
