cask 'fluxcenter' do
  version '1.2.14.47805'
  sha256 'f6d62fa65188b46514952f9c98ca51473b33ed387b6a9351a19b9fb8844aaca2'

  url "https://fluxhome.com/wp-content/uploads/files/Center/MacOS/Flux_FluxCenter_MacOS_Installer_(#{version}).dmg"
  name 'FluxCenter'
  homepage 'http://www.fluxhome.com/'

  depends_on macos: '>= :lion'

  app 'FluxCenter.app'
end
