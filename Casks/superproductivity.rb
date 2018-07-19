cask 'superproductivity' do
  version '1.10.49'
  sha256 '0ab59ca8e1014d597882b74924461f01f3cccc6a5c233efa6f7b4b59aba032d7'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
