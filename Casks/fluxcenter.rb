cask 'fluxcenter' do
  version '1.2.15.47859'
  sha256 'f9a6557d1ab8dfe21b8cb0d215907fbb174fe66a94c06d61c2650e4e90ad4043'

  url "https://fluxhome.com/wp-content/uploads/files/Center/MacOS/Flux_FluxCenter_MacOS_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'http://www.fluxhome.com/'

  depends_on macos: '>= :lion'

  app 'FluxCenter.app'
end
