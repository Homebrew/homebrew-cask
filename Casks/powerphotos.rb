cask 'powerphotos' do
  version '1.1.5'
  sha256 '22060b46e26526eeb9e11d4b753050a7901af4c5aa1ea5f0c0e880dba145ae50'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          :sha256 => '8c23de62c68188e71d5165e96be8d142c012267b74e3f79261ed2b213f3583e3'
  name 'PowerPhotos'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'PowerPhotos.app'
end
