cask 'superproductivity' do
  version '5.0.7'
  sha256 '16200fabc87d5d0f2201c285a446ce4bdc552eb6bca2ecc6fcabdb52e140d379'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
