cask :v1 => 'balsamiq-mockups' do
  version :latest
  sha256 :no_check

  # amazonaws is the official download host per the vendor homepage
  url 'http://s3.amazonaws.com/build_production/mockups-desktop/MockupsForDesktop.dmg'
  homepage 'http://balsamiq.com/'
  license :commercial

  app 'Balsamiq Mockups.app'
end
