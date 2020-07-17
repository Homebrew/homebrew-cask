cask 'camo-studio' do
  version '1.0.1,53'
  sha256 '3da0ac5fbfea28848de0ee7fd5832298884e241a189d56150013dfebfba3589d'

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast 'https://uds.reincubate.com/release-notes/camo/?format=sparkle'
  name 'Camo Studio'
  homepage 'https://reincubate.com/camo/'

  app 'Camo Studio.app'

  uninstall delete: '/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin'
end
