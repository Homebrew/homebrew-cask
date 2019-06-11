cask 'superproductivity' do
  version '2.7.8'
  sha256 '0753e435661ffab96faf9a2f4ce24226b6bba1e824bbbd053dec0e0836c62685'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
