cask :v1 => 'powerphotos' do
  version '1.0.0'
  sha256 '449a3b6acb91e890c931045dcaae430b6daa7910c47a6a3fb4211cd3770a3d6f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.gsub('.', '')}.zip"
  name 'PowerPhotos'
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          :sha256 => 'f7ac6bab7dd82bf9298a90e4a7727b3213e91b1ef73b0f9c8e13480842062ff8'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  app 'PowerPhotos.app'
end
