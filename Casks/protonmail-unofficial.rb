cask 'protonmail-unofficial' do
  version '1.0.2'
  sha256 '818ecd4db48954332300a3295467add6f0d62efc72d4fb32a88877edad3abae0'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-unofficial-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop (unofficial).app'
end
