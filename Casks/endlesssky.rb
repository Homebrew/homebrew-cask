cask 'endlesssky' do
  version '0.9.10'
  sha256 'f2e7aa2bcd29c6070cac386111362bd353239cbaf6061c22dfa3b440426fd06b'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'Endless Sky.app'
end
