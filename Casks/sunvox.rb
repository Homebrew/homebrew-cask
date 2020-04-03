cask 'sunvox' do
  version '1.9.5d'
  sha256 'c2e4bfdd4a6b807afc4559f9c8a5e948dcdb28528b86364cb3c3363f207431fb'

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast 'https://www.warmplace.ru/soft/sunvox/changelog.txt'
  name 'SunVox'
  homepage 'https://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/macos/SunVox.app'
end
