cask 'gifcapture' do
  version '1.1.0'
  sha256 '29a6d998b3028fb0f2f232b8b99dd388d338a713aab4aac71699ceb7330af5ba'

  url "https://github.com/onmyway133/GifCapture/releases/download/#{version}/GifCapture.zip"
  appcast 'https://github.com/onmyway133/GifCapture/releases.atom',
          checkpoint: 'dffcce8923fc1eb86fe6fee1aee24710ffa01cc8ef82fde3ef85618b9c039313'
  name 'GifCapture'
  homepage 'https://github.com/onmyway133/GifCapture'

  app 'GifCapture.app'
end
