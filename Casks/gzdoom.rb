cask 'gzdoom' do
  version '4.3.3'
  sha256 '8f474455af2c5cdcf2dd9087d94d5f718ffa1ed50a291b6361f846b30f6d1d16'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
