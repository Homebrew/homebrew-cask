cask 'gitx' do
  desc "GitX is an OS X (MacOS) native graphical client for the git version control system."

  if MacOS.version <= :snow_leopard
    version '0.14.81'
    sha256 'ba61b4b84cb613a6196e6bd1d3102ad460ec0645a885b1cb94132e5244e1d330'
  elsif MacOS.version <= :lion
    version '0.15.1949'
    sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'
  elsif MacOS.version <= :mavericks
    version '0.15.1964'
    sha256 'd88bcb7f92ca1cdf31cb3f1d2e24c03e2091ab330319aeef2e770c0dbd6f7817'
  else
    version '0.16.2327'
    sha256 'c8dd6dcac8dd85808acdb937f3125bf67b2b1c2b36da5541f20de73628abf544'
    s='s'
  end

  url "https://github.com/gitx/gitx/releases/download/build#{s}/#{version.major_minor}/#{version.patch}/GitX-dev-#{version.patch}.dmg"

  appcast 'https://github.com/gitx/gitx/releases.atom'
  name 'GitX-dev'
  homepage 'https://github.com/gitx/gitx'

  conflicts_with cask: %w[
    laullon-gitx
    rowanj-gitx
  ]

  app 'GitX.app'
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
