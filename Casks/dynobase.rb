cask 'dynobase' do
  version '0.7.0'
  sha256 '08501be8f7b6d3b805c51e3012b5fbd751daedcbc898fbdd81ddd5d11afff362'

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
