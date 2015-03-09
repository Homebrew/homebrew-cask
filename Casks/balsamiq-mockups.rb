cask :v1 => 'balsamiq-mockups' do
  version '3.0.2'
  sha256 '9fc0de506e7275a4468f238f38ff11304877330a2fa5c082fbbf8ce90e07c994'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/build_production/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'http://balsamiq.com/'
  license :commercial

  app 'Balsamiq Mockups.app'
end
