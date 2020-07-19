cask 'camo-studio' do
  version '1.0.3,55'
  sha256 '2e38735162242808c8d4823a47fbf1551923a5a27bba2b836c551f90a36baf83'

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast 'https://uds.reincubate.com/release-notes/camo/?format=sparkle'
  name 'Camo Studio'
  homepage 'https://reincubate.com/camo/'

  app 'Camo Studio.app'

  uninstall delete: '/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin'
end
