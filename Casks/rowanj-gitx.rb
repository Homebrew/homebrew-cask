cask :v1 => 'rowanj-gitx' do
  if MacOS.release == :snow_leopard
    version '0.14.81'
    url 'https://github.com/rowanj/gitx/releases/download/builds%2F0.14%2F81/GitX-dev-81.dmg'
    sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'
  elsif MacOS.release == :lion
    version '0.15.1949'
    url 'https://github.com/rowanj/gitx/releases/download/builds%2F0.15%2F1949/GitX-dev-1949.dmg'
    sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'
  else
    version '0.15.1964'
    url 'https://github.com/rowanj/gitx/releases/download/builds%2F0.15%2F1964/GitX-dev-1964.dmg'
    sha256 'd88bcb7f92ca1cdf31cb3f1d2e24c03e2091ab330319aeef2e770c0dbd6f7817'
  end

  name 'GitX'
  name 'GitX-dev'
  homepage 'http://rowanj.github.io/gitx/'
  appcast 'https://s3.amazonaws.com/builds.phere.net/GitX/development/GitX-dev.xml'
  license :gpl

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel
  conflicts_with :cask => 'gitx'
end
