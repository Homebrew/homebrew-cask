cask 'clipy' do
  version '1.0.10'
  sha256 '526b875be7770b2d8fde600fed663c4138ebf756935e2fa0f95763f22a3c791a'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '44203442d251e8975e00bbd8fc79ecb31ebf5e20c3251b95fb965280c6d1cff6'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
