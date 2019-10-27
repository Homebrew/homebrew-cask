cask 'gzdoom' do
  version '4.2.3'
  sha256 '386f4d2f42dd3a849faf237ecbbaddc05df191b4e3e1a8307379846305ea3949'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
