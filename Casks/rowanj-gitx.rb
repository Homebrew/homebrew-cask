cask 'rowanj-gitx' do
  if MacOS.release <= :snow_leopard
    version '0.14.81'
    sha256 'ba61b4b84cb613a6196e6bd1d3102ad460ec0645a885b1cb94132e5244e1d330'
  elsif MacOS.release <= :lion
    version '0.15.1949'
    sha256 '17301ee1209bd4b12c126d7a58405efdb366f99f70b4f923a9c96e16c334ce2a'
  else
    version '0.15.1964'
    sha256 'd88bcb7f92ca1cdf31cb3f1d2e24c03e2091ab330319aeef2e770c0dbd6f7817'
  end

  # github.com/rowanj/gitx was verified as official when first introduced to the cask
  url "https://github.com/rowanj/gitx/releases/download/builds/#{version.major_minor}/#{version.patch}/GitX-dev-#{version.patch}.dmg"
  appcast 'https://github.com/rowanj/gitx/releases.atom',
          checkpoint: 'b1e11ef3e13e74f84a51bfd6169db61f9c37fe5df851bb8c5f131c1981f8fdc0'
  name 'GitX-dev'
  homepage 'https://rowanj.github.io/gitx/'
  license :gpl

  conflicts_with cask: 'gitx'
  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
