cask :v1 => 'balsamiq-mockups' do
  version '3.1.8'
  sha256 'f44aba5b48384af88cfc2111c4077c2bf5754df35da0cf5a246f186d13328a3d'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
