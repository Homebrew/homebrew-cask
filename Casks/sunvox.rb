cask 'sunvox' do
  version '1.9.5d'
  sha256 '90c539f4b1ab0165c24363a4dd8b5d6b3c7efbd91ac5f9df8e143732db60fe96'

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast 'https://www.warmplace.ru/soft/sunvox/changelog.txt'
  name 'SunVox'
  homepage 'https://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/macos/SunVox.app'
end
