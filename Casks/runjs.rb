cask 'runjs' do
  version '1.2.1'
  sha256 'c7b0a7c942597bfc3493992332a5c57f1837476b193b2d909b1fa26e14d9fed7'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end
