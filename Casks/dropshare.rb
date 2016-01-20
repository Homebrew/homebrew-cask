cask 'dropshare' do
  version '3.13'
  sha256 '177a5d0f5d038772493621ce072f67d4b49eedbb408651f790f378399b354943'

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d2wvuuix8c9e48.cloudfront.net/Dropshare-latest.zip'
  appcast 'https://getdropsha.re/sparkle/Dropshare.xml',
          checkpoint: 'c4fa30235c14673cd615dcfba5d57596e5c595793d77f3ba0cf5d4663769a63c'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
