cask 'medialink' do
  version :latest
  sha256 :no_check

  url 'http://www.nullriver.com/downloads/MediaLink.zip'
  name 'MediaLink'
  homepage 'http://www.nullriver.com/products/medialink'

  prefpane 'MediaLink.prefPane'
end
