class SublimeText3 < Cask
  version :latest
  sha256 :no_check

  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg'
  appcast 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml'
  homepage 'http://www.sublimetext.com/3'

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
  # todo :fileversion fix download file version to latest
  #   :fileversion 'http://c758482.r82.cf2.rackcdn.com/Sublime Text Build 3065.dmg'
end
