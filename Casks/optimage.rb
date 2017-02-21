cask 'optimage' do
  version :latest
  sha256 :no_check

  url 'https://getoptimage.com/download/optimage-mac.zip'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
