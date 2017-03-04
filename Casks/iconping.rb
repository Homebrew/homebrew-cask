cask 'iconping' do
  version '1.02'
  sha256 '9f02c99b360ed2a0a424e1bdeb4f810ffb120a3cf78b6889b8a6c5b29b06d0c9'

  url "http://antirez.com/iconping/iconping-#{version}.app.dmg"
  appcast 'http://antirez.com/iconping/',
          checkpoint: '9b5e31372e075a6c6422b63e21c9cce3a578d530ba0955551d1e1c4df86209fe'
  name 'Icon Ping'
  homepage 'http://antirez.com/iconping/'

  app 'iconping.app'
end
