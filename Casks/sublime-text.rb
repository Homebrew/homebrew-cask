class SublimeText < Cask
  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg'
  homepage 'http://www.sublimetext.com/2'
  version '2.0.2'
  sha256 '906e71e19ae5321f80e7cf42eab8355146d8f2c3fd55be1f7fe5c62c57165add'
  link 'Sublime Text 2.app'
  binary 'Sublime Text 2.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
