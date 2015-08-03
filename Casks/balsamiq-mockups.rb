cask :v1 => 'balsamiq-mockups' do
  version '3.1.7'
  sha256 'e46f9d6c7abfc95b34ec6ff944efbdef9c256f5ac49fb54767c3f287fe38919a'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
