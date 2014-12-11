cask :v1 => 'iconping' do
  version '1.02'
  sha256 '9f02c99b360ed2a0a424e1bdeb4f810ffb120a3cf78b6889b8a6c5b29b06d0c9'

  url "http://antirez.com/iconping/iconping-#{version}.app.dmg"
  homepage 'http://antirez.com/iconping/'
  license :unknown    # todo: improve this machine-generated value

  app 'iconping.app'
end
