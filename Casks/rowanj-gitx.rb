cask 'rowanj-gitx' do
  if MacOS.version <= :snow_leopard
    version '0.14.81'
    sha256 'ba61b4b84cb613a6196e6bd1d3102ad460ec0645a885b1cb94132e5244e1d330'
  elsif MacOS.version <= :lion
    version '0.15.1949'
    sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'
  else
    version '0.15.1964'
    sha256 'd88bcb7f92ca1cdf31cb3f1d2e24c03e2091ab330319aeef2e770c0dbd6f7817'
  end

  # github.com/rowanj/gitx was verified as official when first introduced to the cask
  url "https://github.com/rowanj/gitx/releases/download/builds/#{version.major_minor}/#{version.patch}/GitX-dev-#{version.patch}.dmg"
  appcast 'https://github.com/rowanj/gitx/releases.atom',
          checkpoint: '45b0d334c14de07deb1f391d25a71e434bc55edf772c2c5cb852bdf655c1964d'
  name 'GitX-dev'
  homepage 'https://rowanj.github.io/gitx/'

  conflicts_with cask: 'gitx'

  app 'GitX.app'
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
