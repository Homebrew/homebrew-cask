cask 'freeorion' do
  version '0.4.10,2020-07-10.f3d403e'
  sha256 'fa9db8fd170915283775ccc052d80f5b4c3a7626ac57f3e00a4b321692b3e040'

  # github.com/freeorion/ was verified as official when first introduced to the cask
  url "https://github.com/freeorion/freeorion/releases/download/v#{version.before_comma}/FreeOrion_v#{version.before_comma}_#{version.after_comma}_MacOSX_10.9.dmg"
  appcast 'https://github.com/freeorion/freeorion/releases.atom'
  name 'FreeOrion'
  homepage 'https://freeorion.org/'

  app 'FreeOrion.app'
end
