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
  tags :vendor => 'Araxis'
  homepage 'http://www.araxis.com/merge'
  license :commercial
  zap :delete => [
                 '~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist',
                 '~/Library/Preferences/com.araxis.merge.plist',
                 ]
  app 'Araxis Merge.app'
  caveats <<-EOS.undent
    Registration may still be required for proper operation of Araxis Merge.
    Araxis offers no-cost licences of its products to bona fide contributors to Open Source projects.
  
    Additional steps are required to integrate Araxis Merge with Finder,
    installing the Araxis Merge command-line utilities, or integrating
    Araxis Merge with other applications.
  
    See http://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
