cask 'dropshare' do
  version '3.13'
  sha256 '177a5d0f5d038772493621ce072f67d4b49eedbb408651f790f378399b354943'

  # cloudfront.net is the official download host per the vendor homepage
  url 'http://d2wvuuix8c9e48.cloudfront.net/Dropshare-latest.zip'
  appcast 'https://getdropsha.re/sparkle/Dropshare.xml',
          :sha256 => '1ebb0d998879640da85a1e9e26f75c6c8aaae3f294d0f15098247e4ea8a48389'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
