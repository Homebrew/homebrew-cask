cask 'gifcapture' do
  version '1.0.4'
  sha256 'cb72748fdb58204d72e7531d3fbcb91293d6052d437b51323d1706b554079e69'

  url "https://github.com/onmyway133/GifCapture/releases/download/#{version}/GifCapture.zip"
  appcast 'https://github.com/onmyway133/GifCapture/releases.atom',
          checkpoint: '709e318e5cc58b657e6aa0fbf94e6c4b6eceeb1caea0a290a2a3b9ca6b320921'
  name 'GifCapture'
  homepage 'https://github.com/onmyway133/GifCapture'

  app 'GifCapture.app'
end
