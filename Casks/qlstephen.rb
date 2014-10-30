class Qlstephen < Cask
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/whomwah/qlstephen/QLStephen.qlgenerator.zip'
  homepage 'http://whomwah.github.io/qlstephen/'
  license :oss

  qlplugin 'QLStephen.qlgenerator'
end
