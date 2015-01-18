cask :v1 => 'query-handbrake-log' do
  version '5.4'
  sha256 'a135d904bac2ace2a89d4c123ac4939ab7241e8e3adcd82201f04275909a2eb9'

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/query-handbrake-log.sh'
end
