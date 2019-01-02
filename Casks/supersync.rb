cask 'supersync' do
  version '6.2'
  sha256 'f1b1e16e278590e96b666abda0f4f48e11b1e1ae4049e787c728ec705f844f25'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
