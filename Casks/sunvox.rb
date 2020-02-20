cask 'sunvox' do
  version '1.9.5'
  sha256 'b11104a4e3925944bb005a29eda49e6f58cfb6fe2605dc7bb67b62bc9ef22c04'

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast 'https://www.warmplace.ru/soft/sunvox/changelog.txt'
  name 'SunVox'
  homepage 'https://www.warmplace.ru/soft/sunvox/'

  app 'sunvox/sunvox/macos/SunVox.app'
end
