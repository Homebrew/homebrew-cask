cask 'gzdoom' do
  version '4.4.0'
  sha256 '40cf781f2246666c0b3312a262dd538bef0e52cf3dcc85b7cf099c6d7e3548ba'

  # github.com/coelckers/gzdoom/ was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
