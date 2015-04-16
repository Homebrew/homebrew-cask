cask :v1 => 'powerphotos' do
  version '1.0.0'
  sha256 '449a3b6acb91e890c931045dcaae430b6daa7910c47a6a3fb4211cd3770a3d6f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.gsub('.', '')}.zip"
  name 'PowerPhotos'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  app 'PowerPhotos.app'
end
