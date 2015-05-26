cask :v1 => 'iphoto-library-manager' do
  version '4.1.11'
  sha256 '901741ef76ba58458821f83f37ca02b6d55b3dacdf4c8ad26899f0ea3f77c5d5'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/iplm/iPhotoLibraryManager_#{version.gsub('.', '')}.zip"
  name 'iPhoto Library Manager'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
