cask 'balsamiq-mockups' do
  version '3.3.3'
  sha256 '824161fe4bdc9ed14d71153458fb2fbdb48e548a1ad4a10ccaedb87d74619d65'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"

  zap :delete => '~/Library/Preferences/BalsamiqMockups3'
end
