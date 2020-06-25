cask 'ffmpeg-static' do
  version '4.3'
  sha256 'b29347ba16984ae943f0a05b14be03f533e95b2eb41ad9ea14a37b7ba507260b'

  url "https://ffmpeg.zeranoe.com/builds/macos64/static/ffmpeg-#{version}-macos64-static.zip"
  name 'FFmpeg'
  homepage 'https://ffmpeg.zeranoe.com/builds/'

  conflicts_with formula: 'ffmpeg'

  binary "ffmpeg-#{version}-macos64-static/bin/ffmpeg"
  binary "ffmpeg-#{version}-macos64-static/bin/ffprobe"
  binary "ffmpeg-#{version}-macos64-static/bin/ffplay"
end
