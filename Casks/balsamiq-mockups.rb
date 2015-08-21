cask :v1 => 'balsamiq-mockups' do
  version '3.1.9'
  sha256 '735f09e284c18bf924c5475dda5d303275bea46b24d3ef6a6e7f8754c46bb05f'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
