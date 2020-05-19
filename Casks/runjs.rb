cask 'runjs' do
  version '1.9.0'
  sha256 'd81e6af3048dbdf1130cfd0fc7b28c445b3c05f533c199f2243cb7ead664fc25'

  # github.com/lukehaas/runjs/ was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end
