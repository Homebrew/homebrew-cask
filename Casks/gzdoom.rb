cask 'gzdoom' do
  version '4.2.1'
  sha256 '5d21570eed7bd05f269ca0c60dcbf1589cffad174e344aa1889a6a00a441a385'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
