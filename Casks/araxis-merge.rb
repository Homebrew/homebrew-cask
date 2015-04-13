cask :v1 => 'araxis-merge' do
  version '2014.4581'

  depends_on :macos => '>= :mavericks'
  if MacOS.release <= :mavericks
    sha256 '4029be850bbffd8a46b30b7701434474c33e07e678848ae47e094ddba04668d2'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  else
    sha256 '483314bfe464f8954aeb0ddc839dfcab061d7d070bdbbe63b28934a54436663d'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  end

  name 'Araxis Merge'
  homepage 'http://www.araxis.com/merge'
  license :commercial
  tags :vendor => 'Araxis'

  app 'Araxis Merge.app'

  binary 'Utilities/araxisgitdiff'
  binary 'Utilities/araxisopendiff'
  binary 'Utilities/araxissvndiff'
  binary 'Utilities/compare'
  binary 'Utilities/araxisgitmerge'
  binary 'Utilities/araxisp4diff'
  binary 'Utilities/araxissvndiff3'
  binary 'Utilities/compare2'
  binary 'Utilities/araxishgmerge'
  binary 'Utilities/araxisp4winmrg'
  binary 'Utilities/araxissvnmerge'

  zap :delete => [
                 '~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist',
                 '~/Library/Preferences/com.araxis.merge.plist',
                 ]

  caveats <<-EOS.undent
    For instructions to integrate Araxis Merge with Finder or other applications,
    see http://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
