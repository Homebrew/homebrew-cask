cask 'runjs' do
  version '1.3.0'
  sha256 '4a8d72795afbe3ba2781ffcf3c575922f0ec146080d747f6bc496a93974652b3'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end
