cask 'superproductivity' do
  version '5.0.5'
  sha256 'f4eb2c8658c706635dac7ed9dfb24a423eb48cc69336856c48f8e4ac87d02e55'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
