cask 'dynobase' do
  version '0.5.2'
  sha256 'efee9124eb78eb24a66c50963778903cd546d981dd171f85c26ab60d837b19d0'

  # hazel.rwilinski.now.sh was verified as official when first introduced to the cask
  url 'https://hazel.rwilinski.now.sh/download/darwin'
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=#{url}"
  name 'Dynobase'
  homepage 'https://dynobase.dev/'

  app 'Dynobase.app'

  zap trash: [
               '~/Library/Application Support/dynobase',
               '~/Library/Saved Application State/com.rwilinski.dynobase.savedState',
             ]
end
