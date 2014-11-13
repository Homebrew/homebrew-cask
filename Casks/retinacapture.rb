cask :v1 => 'retinacapture' do
  version :latest
  sha256 :no_check

  url 'http://www.retinacapture.com/files/RetinaCapture.zip'
  homepage 'http://www.retinacapture.com'
  license :unknown

  app 'RetinaCapture.app'
end
