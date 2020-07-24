cask 'runjs' do
  version '1.10.1'
  sha256 '05c6f9581c33adc73601b959e24d5a294cf62f245d2e3823a0c9972fec74c568'

  # github.com/lukehaas/runjs/ was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end
