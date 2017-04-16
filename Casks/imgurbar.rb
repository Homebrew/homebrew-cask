class Imgurbar < Cask
  version :latest
  sha256 :no_check

  url 'https://github.com/zbuc/imgurBar/raw/master/imgur.dmg'
  homepage 'https://github.com/zbuc/imgurBar'
  license :oss

  app 'imgur.app'
end
