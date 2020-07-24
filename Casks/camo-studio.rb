cask 'camo-studio' do
  version '1.0.5,60'
  sha256 '8e728f514be6599f731da59af89a36a20643b922af50f0dc4cc77e1acce8369f'

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast 'https://uds.reincubate.com/release-notes/camo/?format=sparkle'
  name 'Camo Studio'
  homepage 'https://reincubate.com/camo/'

  app 'Camo Studio.app'

  uninstall delete: '/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin'
end
