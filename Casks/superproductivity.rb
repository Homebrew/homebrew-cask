cask 'superproductivity' do
  version '2.5.2'
  sha256 '9196b516d9994dc035e2573d864add69f245d4f59ca242d6ef2c89fec6a0f5d8'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
