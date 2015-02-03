cask :v1 => 'query-handbrake-log' do
  version :latest
  sha256 :no_check

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/query-handbrake-log.sh'
end
