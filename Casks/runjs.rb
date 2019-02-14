cask 'runjs' do
  version '1.2.4'
  sha256 'da06399640c505ea334d561b4049ecf81993d8885f380baad9112ffda7ce1423'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end
