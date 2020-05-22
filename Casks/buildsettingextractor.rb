cask 'buildsettingextractor' do
  version '1.4'
  sha256 'd13fe380c21ca3231f62bc1f148be0690bf70f27971d5baae9fa6ccdb11b114c'

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  appcast 'https://github.com/dempseyatgithub/BuildSettingExtractor/releases.atom'
  name 'BuildSettingExtractor'
  homepage 'https://github.com/dempseyatgithub/BuildSettingExtractor'

  depends_on macos: '>= :mojave'

  app 'BuildSettingExtractor.app'
end
