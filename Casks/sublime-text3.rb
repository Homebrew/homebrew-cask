class SublimeText < Cask
  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg'
  homepage 'http://www.sublimetext.com/3'
  version '3.0'
  sha256 '057c12afed359ea93f996b2e73973fa8ea2bfb14a3e61a5e13b467c5c38d4ca5'
  link 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
