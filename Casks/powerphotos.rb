cask 'powerphotos' do
  version '1.1.3'
  sha256 '8b1513c3c6fdd6f99a4ce436a906de774ee5717318c2fb4570455d539fb6a1bd'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.delete('.')}.zip"
  name 'PowerPhotos'
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          :sha256 => '67c166e96bc9f51af923100a133ef6d743e599ef83d4e19a48ba68f30d6a9334'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'PowerPhotos.app'
end
