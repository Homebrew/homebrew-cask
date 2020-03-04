cask 'buildsettingextractor' do
  version '1.3.2'
  sha256 '874ea0c1c8ebcae77288481ba8afa7daba052d1167bb696375835a7fae4daf42'

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  appcast 'https://github.com/dempseyatgithub/BuildSettingExtractor/releases.atom'
  name 'BuildSettingExtractor'
  homepage 'https://github.com/dempseyatgithub/BuildSettingExtractor'

  app 'BuildSettingExtractor.app'
end
