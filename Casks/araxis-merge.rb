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
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Araxis Merge.app'
end
