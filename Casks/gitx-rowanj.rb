class GitxRowanj < Cask
  version '0.15.1949'
  sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'

  url 'http://builds.phere.net/GitX/development/GitX-dev-1949.dmg'
  appcast 'https://s3.amazonaws.com/builds.phere.net/GitX/development/GitX-dev.xml'
  homepage 'http://rowanj.github.io/gitx/'

  link 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
