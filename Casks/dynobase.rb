cask 'dynobase' do
  version '0.7.4'
  sha256 '9722c2b7df4d18799ee4ba04404edfb7594e33ade2c4cd61e57f1a93360d397f'

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
