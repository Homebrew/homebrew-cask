cask 'powerphotos' do
  version '1.1.8'
  sha256 '6996bd3834f9275d16d141bc12cefa83be85487a513f3b6b424f91a7e0e3ff7a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '8e20c09bbffb0e07d275479375bc9ad7d851eec1377d397074bb6f427585e4ad'
  name 'PowerPhotos'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
