class GitxRowanj < Cask
  version '0.15.1949'
  sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'

  url 'https://github.com/rowanj/gitx/releases/download/builds%2F0.15%2F1949/GitX-dev-1949.dmg'
  homepage 'http://rowanj.github.io/gitx/'
  license :gpl

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
