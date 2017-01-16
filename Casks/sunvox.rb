cask 'sunvox' do
  version '1.9.2'
  sha256 'cca6ba7d72fed5c18d04c2ad49d065b956e184b8d0b2b308d7525d01fef0322c'

  url "http://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name 'SunVox'
  homepage 'http://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/osx/SunVox.app'
end
