cask :v1 => 'iphoto-library-manager' do
  version '4.1.10'
  sha256 '2ab9ec177b2c6ee94847ea6c2164a51f86e2c9e288433f9f7a4f20ab175be519'

  url "https://s3.amazonaws.com/fatcatsoftware/iplm/iPhotoLibraryManager_#{version.gsub('.', '')}.zip"
  name 'iPhoto Library Manager'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iPhoto Library Manager.app'
end
