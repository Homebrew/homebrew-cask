cask 'supersync' do
  version '6.1.1'
  sha256 '43ca3fa8eebdba63bf9b8f2c17d26f0847e0ae55c114312f606240cbbbf88ce4'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
