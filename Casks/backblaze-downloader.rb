class BackblazeDownloader < Cask
  version 'latest'
  sha256 :no_check

  url 'https://secure.backblaze.com/mac_restore_downloader'
  homepage 'http://www.backblaze.com/'

  link 'Backblaze Downloader.app'
end
