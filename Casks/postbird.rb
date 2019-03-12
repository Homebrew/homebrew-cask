cask 'postbird' do
  version '0.8.1'
  sha256 'd7077ca9fe61bf5f4c204ebeec91fbe65e54bb23c8df3fa0d134be01c23c7028'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
