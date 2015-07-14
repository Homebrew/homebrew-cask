cask :v1 => 'balsamiq-mockups' do
  version '3.1.6'
  sha256 '5f6fec35f0ab2fdaea766b5139cc9ea604782eeda6ac417b606e6d309c7b89b7'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
