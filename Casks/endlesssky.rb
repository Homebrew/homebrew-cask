cask :v1 => 'endlesssky' do
  version '0.8.1'
  sha256 'f1a02bcbce7af263a86f75ed469ae71b11a2c3e5371531ccd809fbce313ab1ea'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end
