cask 'superproductivity' do
  version '3.1.4'
  sha256 '251929cac0bb49a0dbcb5e53d20c610025a9572119606d1ac68443f6e37df983'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
