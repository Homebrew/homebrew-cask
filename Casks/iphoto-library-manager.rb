cask :v1 => 'iphoto-library-manager' do
  version '4.1.7'
  sha256 'b56414de3c6e08f9c40ee1fd688ea9f3393fcb6e5d4f83685dde7c45fec2533f'

  url "https://s3.amazonaws.com/fatcatsoftware/iplm/iPhotoLibraryManager_#{version.gsub('.', '')}.zip"
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :unknown

  app 'iPhoto Library Manager.app'
end
