cask 'powerphotos' do
  version '1.1.5'
  sha256 '22060b46e26526eeb9e11d4b753050a7901af4c5aa1ea5f0c0e880dba145ae50'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '715794b08d328f86e432494cee70f297d05764be4c8f8bc345d5cc63fb259eff'
  name 'PowerPhotos'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
