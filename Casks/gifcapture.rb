cask 'gifcapture' do
  version '1.0.3'
  sha256 '7bd3fe54c39986828688220680b8b31c848d22a4a0722e52f67b920de5e4c41f'

  url "https://github.com/onmyway133/GifCapture/releases/download/#{version}/GifCapture.zip"
  appcast 'https://github.com/onmyway133/GifCapture/releases.atom',
          checkpoint: 'c6f1765d3174c178e8b1fa57b6f6c1d8e9879b58d2c567837d4d37051c471038'
  name 'GifCapture'
  homepage 'https://github.com/onmyway133/GifCapture'

  app 'GifCapture.app'
end
