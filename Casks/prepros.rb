cask 'prepros' do
  version '7.2.25'
  sha256 'd79ece1a2b45a82a8da50a6697a8c2dde2d99dce7080e124503cf27d5ffcb07a'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
