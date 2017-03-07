cask 'gifcapture' do
  version '1.0.3'
  sha256 :no_check

  url "https://github.com/onmyway133/GifCapture/releases/download/#{version}/GifCapture.zip"
  name 'GifCapture'
  homepage 'https://github.com/onmyway133/GifCapture'

  app 'GifCapture.app'
end
