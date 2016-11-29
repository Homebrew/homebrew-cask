cask 'backblaze-downloader' do
  version :latest
  sha256 :no_check

  url 'https://secure.backblaze.com/mac_restore_downloader'
  name 'Backblaze Downloader'
  homepage 'https://www.backblaze.com/'

  app 'Backblaze Downloader.app'
end
