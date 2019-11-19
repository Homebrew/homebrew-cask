cask 'gzdoom' do
  version '4.2.4'
  sha256 'adea4dd67b8ae9f450b5c5b233d18cfcb1ca4fa8314880c8ba8f84d85ad436cf'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
