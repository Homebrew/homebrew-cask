cask 'pixate-studio' do
  version :latest
  sha256 :no_check

  url 'http://cdn.pixate.com/downloads/studio/latest/PixateStudio.zip'
  name 'Pixate'
  homepage 'http://www.pixate.com/'

  app 'Pixate Studio.app'
end
