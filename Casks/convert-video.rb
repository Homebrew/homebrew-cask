cask :v1 => 'convert-video' do
  version '5.3'
  sha256 '077a789a9198f56bb7cb15017c418032f255b00a239ada71562927b9893908bb'

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/convert-video.sh', :target => 'convert-video'

  depends_on :formula => %w{
                            ffmpeg
                            mkvtoolnix
                            mp4v2
                           }
end
