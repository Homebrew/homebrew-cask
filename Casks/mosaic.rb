cask 'mosaic' do
  version '1.0.7'
  sha256 '310a3554a31e04a4a337fe343b9bf4e01850161ec28e8c7fc3e5a8c187fbb89e'

  url 'http://www.lightpillar.com/appdata/mosaic/Mosaic.zip'
  appcast 'http://lightpillar.com/appdata/mosaic/features/version-history.html',
          checkpoint: 'bed0519ce94b3bcaeff59679ee8595dc028685097d164e044cf8077ded5ad6f4'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  app 'Mosaic.app'
end
