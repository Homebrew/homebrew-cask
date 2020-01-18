cask 'superproductivity' do
  version '3.1.3'
  sha256 '841721d3639e30d1f057e68a97fd9740e2a4c7c8ae81aedffc5d89c72d17de24'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
