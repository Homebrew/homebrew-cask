cask 'fluxcenter' do
  version '1.2.13.47658'
  sha256 'c28ae7d6185e86c22cb3d293d33ba2dd9a696f1221fc254ad47a074e4da28486'

  url "https://fluxhome.com/wp-content/uploads/files/Center/MacOS/Flux_FluxCenter_MacOS_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'http://www.fluxhome.com/'

  depends_on macos: '>= :lion'

  app 'FluxCenter.app'
end
