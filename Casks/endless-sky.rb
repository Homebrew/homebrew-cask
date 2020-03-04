cask 'endless-sky' do
  version '0.9.11'
  sha256 'd7e268de713df3b6533b71ff6943827eb800c2dc457ad129e9b151c5df6f4d05'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'Endless Sky.app'
end
