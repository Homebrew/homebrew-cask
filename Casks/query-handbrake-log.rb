cask :v1 => 'query-handbrake-log' do
  version '5.8'
  sha256 '31e068d4c8589473d6a3c13afc7062cafa6e8a80ea1821e2974590d9aaed8de5'

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/query-handbrake-log.sh'
end
