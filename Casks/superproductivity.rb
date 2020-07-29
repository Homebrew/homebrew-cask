cask 'superproductivity' do
  version '5.3.5'
  sha256 'ad9ed1b9bee158512c80e21d1f1f630d2dddc1e9cc7963a3a42c88ae9dd023a8'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
