cask :v1 => 'retinacapture' do
  version :latest
  sha256 :no_check

  url 'http://www.retinacapture.com/files/RetinaCapture.zip'
  name 'RetinaCapture'
  homepage 'http://www.retinacapture.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RetinaCapture.app'
end
