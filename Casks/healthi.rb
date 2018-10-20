cask 'healthi' do
  version '3.1.1'
  sha256 '03b4187a432fb8f7d24c0286403f75f243fa1653eda3362fe459ea4d54229f15'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi-app.app'
end
