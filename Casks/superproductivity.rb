cask 'superproductivity' do
  version '1.10.36'
  sha256 '6e318abd3875b6f1de393ee4ff169759bfbd80b40723cdb66aafec21e404cf14'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: '5124f145cea976d53b745d45751e2d1b0ebb4ab0f5e0aa1ede54191cf0e8a71e'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
