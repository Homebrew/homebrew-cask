cask 'datweatherdoe' do
  version '1.11'
  sha256 '6b1eac172c178045328f1dd200cf1ecd346dcf7180525b8a91bcacb24b621b87'

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  appcast 'https://github.com/inderdhir/DatWeatherDoe/releases.atom'
  name 'DatWeatherDoe'
  homepage 'https://github.com/inderdhir/DatWeatherDoe'

  app 'DatWeatherDoe.app'
end
