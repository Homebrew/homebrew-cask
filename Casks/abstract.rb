cask 'abstract' do
  version '77.0.1'
  sha256 '1a5b31a26752a18854d9983f2291bb356e0cbf10709fc65d53d300701fd008d8'

  url "https://downloads.goabstract.com/Abstract-#{version}.dmg"
  name 'Abstract'
  homepage 'https://www.goabstract.com/'

  auto_updates true

  app 'Abstract.app'

  zap trash: [
               '~/Library/Application Support/Abstract',
               '~/Library/Caches/com.elasticprojects.abstract-desktop',
               '~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.plist',
               '~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState',
             ]
end
