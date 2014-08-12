class Poison < Cask
  version 'latest'
  sha256 :no_check

  url 'http://jenkins.tox.im/job/Poison_OS_X/lastSuccessfulBuild/artifact/arc/poison-with-extras.zip'
  homepage 'http://tox.im'

  link 'poison-with-extras/Poison.app'
  link 'poison-with-extras/Silica.app'
  link 'poison-with-extras/Hibiki.app'
end
