class SublimeText3 < Cask
  version 'Build 3065'
  sha256 '373dbfcddab7fb288351763402361cd4045f4a9510eb32f81938d0c156d161c3'

  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg"
  homepage 'http://www.sublimetext.com/3'
  license :unknown

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
  zap :delete => [
                  '~/Library/Application Support/Sublime Text 3/Cache',
                  '~/Library/Application Support/Sublime Text 3/Index',
                  '~/Library/Application Support/Sublime Text 3/Installed Packages',
                  '~/Library/Application Support/Sublime Text 3/Local',
                  '~/Library/Application Support/Sublime Text 3/Packages',
                 ]
  # todo :rmdir not yet supported
  #   :rmdir     '~/Library/Application Support/Sublime Text 3',
end
