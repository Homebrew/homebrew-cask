cask :v1 => 'balsamiq-mockups' do
  version '3.1.4'
  sha256 '36b2be0f506d74df95969c0f43a51a58fec888aee3b1a802e0e0b87b7c93a1b3'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'
  license :commercial

  app "Balsamiq Mockups #{version.to_i}.app"
end
