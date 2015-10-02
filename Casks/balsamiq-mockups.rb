cask :v1 => 'balsamiq-mockups' do
  version '3.2.2'
  sha256 '3b23ac6d7108dc3515a60c6fcb2bdd82331c4466833a4eddd0b579a9fbe6bd24'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
