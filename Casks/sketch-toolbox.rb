cask 'sketch-toolbox' do
  version '0.5.1'
  sha256 'e8e06d8caf87af2334655de49cc0e4a11e057ea7907e380f216476be52576065'

  url 'http://sketchtoolbox.com/Sketch%20Toolbox.zip'
  appcast 'http://sketchtoolbox.com/updates/appcast.xml',
          checkpoint: '9e5898e1e9af4f4d92072ff4bd57fb3726db309c1cee55ea3552c8a71c9b8963'
  name 'Sketch Toolbox'
  homepage 'http://sketchtoolbox.com/'

  app 'Sketch Toolbox.app'
end
