cask :v1 => 'backblaze-downloader' do
  version :latest
  sha256 :no_check

  url 'https://secure.backblaze.com/mac_restore_downloader'
  homepage 'http://www.backblaze.com/'
  license :commercial

  app 'Backblaze Downloader.app'
end
