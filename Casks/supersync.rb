cask :v1 => 'supersync' do
  version '6.1'
  sha256 'c97191ea844a581bbafc8382cac6449be577c1c8b5639c64033fb200fc3a79dc'

  url "https://supersync.com/downloads/SuperSync-#{version}.dmg"
  name 'SuperSync'
  homepage 'https://supersync.com/'
  license :commercial

  app 'SuperSync.app'
end
