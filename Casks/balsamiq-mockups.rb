cask :v1 => 'balsamiq-mockups' do
  version '3.1.2'
  sha256 '5da50865de51a8703a69dca12e98db0533bed85dd0a206c44532f16fe29071d6'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
