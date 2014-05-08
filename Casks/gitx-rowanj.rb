class GitxRowanj < Cask
  url 'http://builds.phere.net/GitX/development/GitX-dev.dmg'
  homepage 'http://rowanj.github.io/gitx/'
  version 'latest'
  sha256 :no_check
  link 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
