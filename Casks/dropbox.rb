cask 'dropbox' do
  version :latest
  sha256 :no_check

  url 'https://www.dropbox.com/download?plat=mac&full=1'
  name 'Dropbox'
  homepage 'https://www.dropbox.com/'
  license :gratis

  auto_updates true

  app 'Dropbox.app'

  uninstall :login_item => 'Dropbox'

  zap :delete => '~/.dropbox'
end
