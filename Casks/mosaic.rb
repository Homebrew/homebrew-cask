cask 'mosaic' do
  version '1.0.8'
  sha256 '4c17791ab7c5317b58284cc4b33169bfb3449cc94f4154280d8201422ee9e439'

  url 'http://www.lightpillar.com/appdata/mosaic/Mosaic.zip'
  appcast 'http://lightpillar.com/appdata/mosaic/features/version-history.html',
          checkpoint: 'a2ee8699948f0c26de146712982f105c7900de465e30eb02ed03c2a8d25a37e4'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  app 'Mosaic.app'
end
