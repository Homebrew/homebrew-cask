cask 'sunvox' do
  version '1.9.3b'
  sha256 '0b3114e8f917bc412c251bffda4c4262a4f82e4df70fb94fb884477b30cbe44c'

  url "http://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name 'SunVox'
  homepage 'http://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/macos/SunVox.app'
end
