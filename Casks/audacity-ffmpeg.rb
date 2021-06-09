cask "audacity-ffmpeg" do
  version :latest
  sha256 :no_check

  url "https://lame.buanzo.org/ffmpeg_64bit_osx.pkg"
  name "audacity-ffmpeg"
  desc "FFmpeg for Audacity"
  homepage "https://lame.buanzo.org/"

  pkg "ffmpeg_64bit_osx.pkg"

  uninstall pkgutil: [
    "org.audacityteam.ffmpeg",
  ]
end
