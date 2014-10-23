class BalsamiqMockups < Cask
  version :latest
  sha256 :no_check

  url 'http://s3.amazonaws.com/build_production/mockups-desktop/MockupsForDesktop.dmg'
  homepage 'http://balsamiq.com/'
  license :commercial

  app 'Balsamiq Mockups.app'
end
