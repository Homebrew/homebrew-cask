cask 'readefine' do
  version :latest
  sha256 :no_check

  url 'http://readefine.anirudhsasikumar.net/ReadefineDesktop.air'
  name 'Readefine'
  homepage 'http://readefine.anirudhsasikumar.net/'

  depends_on cask: 'adobe-air'

  app 'Readefine.app'
end
