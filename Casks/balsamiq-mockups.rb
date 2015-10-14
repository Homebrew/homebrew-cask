cask :v1 => 'balsamiq-mockups' do
  version '3.2.3'
  sha256 '499b2771f72e477ce9e4fc018735f32f9ed33d668b00078f3f2146d5dbf3df9b'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"

  zap :delete => '~/Library/Preferences/BalsamiqMockups3'
end
