cask 'endlesssky' do
  version '0.9.5'
  sha256 '368516912dae6760b6107ee7b79dd598d50e7039deaa381e411687c186a27d48'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: '665d15ac54bfc5af79e671fe4dc20569f02aebdb74193c7dbf1a01642b9f40c6'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'EndlessSky.app'
end
