cask 'iconping' do
  version '1.02'
  sha256 '9f02c99b360ed2a0a424e1bdeb4f810ffb120a3cf78b6889b8a6c5b29b06d0c9'

  url "http://antirez.com/iconping/iconping-#{version}.app.dmg"
  name 'Icon Ping'
  homepage 'http://antirez.com/iconping/'
  license :bsd

  app 'iconping.app'
end
