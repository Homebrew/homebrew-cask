class SublimeText3 < Cask
  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203061.dmg'
  homepage 'http://www.sublimetext.com/3dev'
  version 'Build 3061'
  sha256 '2c49418b2d9c021c276f1b84bcdeca45fc433cc3c3787c0297b264d14fd0e5c9'
  link 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
