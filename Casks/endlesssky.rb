cask 'endlesssky' do
  version '0.9.6'
  sha256 '2044f1458564458ec85663e8f8eba682b0357b309d1877a8022a5fb1faa204ee'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: '71c0eb49c10962c2d95084f5cb18d9fce17dbe59765f5246a0d335649e1ccd4d'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'EndlessSky.app'
end
