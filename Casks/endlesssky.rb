cask 'endlesssky' do
  version '0.9.2'
  sha256 '73fd7c1f67318bd4b6f4dce952be16fef275988fd00e21c64efff5c4bf0c3845'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: '95fdac50548fddf72f5c3f92ab847ed735bb5f82861ed11f9484cc1cc6abaafd'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'EndlessSky.app'
end
