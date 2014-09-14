class Poison < Cask
  version 'latest'
  sha256 :no_check

  url 'https://jenkins.libtoxcore.so/job/Poison2_OSX/lastSuccessfulBuild/artifact/poison/dist/Tox.dmg'
  homepage 'http://tox.im'

  link 'Tox.app'
end
