cask 'librepcb' do
  version '0.1.3'
  sha256 '51fdc65e748cc99c25db90cb9babdc008a66bd4b5c5b6cbc744a7c9049cda3ca'

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-x86_64.dmg"
  appcast 'https://download.librepcb.org/releases'
  name 'LibrePCB'
  homepage 'https://librepcb.org/'

  app 'librepcb.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.librepcb.savedState'
end
