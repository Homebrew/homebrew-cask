cask :v1 => 'sublime-text3' do
  version '3065'
  sha256 '373dbfcddab7fb288351763402361cd4045f4a9510eb32f81938d0c156d161c3'

  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          :sha256 => 'e11769f18c577d4cb189c6f6485119a66db5e5d3ba4df99326080f193c1f74b3'
          
  name 'Sublime Text 3'
  homepage 'http://www.sublimetext.com/3'
  license :unknown    # todo: improve this machine-generated value

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'

  zap :delete => [
				  '~/Library/Application Support/Sublime Text 3/Cache',
				  '~/Library/Application Support/Sublime Text 3/Index',
                  '~/Library/Application Support/Sublime Text 3/Installed Packages',
                  '~/Library/Application Support/Sublime Text 3/Local',
                  '~/Library/Application Support/Sublime Text 3/Packages',
                 ],
      :rmdir  => '~/Library/Application Support/Sublime Text 3'
      
  caveats do
    files_in_usr_local
  end
end