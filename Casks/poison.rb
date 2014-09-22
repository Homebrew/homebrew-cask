class Poison < Cask
  version :latest
  sha256 :no_check

  url 'http://jenkins.tox.im/job/Poison_OS_X/lastSuccessfulBuild/artifact/arc/poison-with-extras.zip'
  homepage 'http://tox.im'

  app 'poison-with-extras/Poison.app'
  app 'poison-with-extras/Silica.app'
  app 'poison-with-extras/Hibiki.app'
end
