cask 'koa11y' do
  version '3.0.0'
  sha256 '38eee107e25b9595955c0ef53f0dcfa44630f94003da781e2607a396469bc4da'

  # github.com/open-indy/Koa11y was verified as official when first introduced to the cask
  url "https://github.com/open-indy/Koa11y/releases/download/v#{version}/OSX_Koa11y_#{version}.zip"
  appcast 'https://github.com/open-indy/Koa11y/releases.atom',
          checkpoint: '7aef34815af55a47089cadf45a459dd8635772789afdb91e3ed6470d55df67f8'
  name 'Koa11y'
  homepage 'https://open-indy.github.io/Koa11y/'

  app 'Koa11y.app'
end
