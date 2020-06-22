cask 'prepros' do
  version '7.3.1'
  sha256 'afdd3aefad91fc17f60058c6c354c75e06c50a5f95eb7e5ee92cee7e1fe6dd13'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
