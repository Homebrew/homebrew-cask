cask :v1 => 'convert-video' do
  version :latest
  sha256 :no_check

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
