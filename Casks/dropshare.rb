cask 'dropshare' do
  version '3.13'
  sha256 '177a5d0f5d038772493621ce072f67d4b49eedbb408651f790f378399b354943'

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d2wvuuix8c9e48.cloudfront.net/Dropshare-latest.zip'
  appcast 'https://getdropsha.re/sparkle/Dropshare.xml',
          :checkpoint => '614a0d667a4b69d3bfbe42604577310172a26d5630c513723045101db9186c24'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
