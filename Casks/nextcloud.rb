cask 'nextcloud' do
  version '2.3.2.1'
  sha256 '2b2afb95d015726f35533d98dc4b7682736ea10f6272b3c280ee1801013dbf55'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://github.com/nextcloud/client_theming/releases.atom',
          checkpoint: '2a12315ea22a0100ebcb20ab75e33c9f925b5d76849187086031e4fcfc6f5c5b'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
