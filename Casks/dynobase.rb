cask 'dynobase' do
  version '0.7.2'
  sha256 '486b82103c22b7c9514294276963ff4a2869a99d5fb9cfb530df5f127f60eff6'

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
