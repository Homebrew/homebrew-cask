cask :v1 => 'convert-video' do
  version '5.4'
  sha256 'cfcf3d492b13d22c15ea9566364592a6b1e193a798bd7eca7e348681318f0dbb'

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/convert-video.sh'

  depends_on :formula => %w{
                            ffmpeg
                            mkvtoolnix
                            mp4v2
                           }
end
