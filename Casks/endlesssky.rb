cask 'endlesssky' do
  version '0.9.7'
  sha256 '0fa95019d66eb9c1aed307717e127f2a13ddfe72ef1b38b42a5ea52443963ae2'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: 'a084240d827f236e29aefc2a38d29ee2d5171bc60e522356a8cb33d96d34e038'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'EndlessSky.app'
end
