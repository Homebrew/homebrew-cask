cask 'runjs' do
  version '1.10.0'
  sha256 '89b1294b45fa071c606c5b8bfe4a837692c36e083ea01205d8c449048bbf3891'

  # github.com/lukehaas/runjs/ was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end
