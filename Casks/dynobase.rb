cask 'dynobase' do
  version '0.6.1'
  sha256 '2e469798300b9090e809d82bd2948d1b23fd42d233586ea2dbdbc2456be1c9ec'

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
