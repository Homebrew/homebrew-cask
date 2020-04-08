cask 'superproductivity' do
  version '5.0.8'
  sha256 '9fcc799ae5049c9bb6cfb7220a461f31527a2b2c594658dec0446920fd32b500'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
