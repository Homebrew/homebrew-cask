cask 'silverback' do
  version '2.6.6'
  sha256 'bee6233d3cc94ccd972b6c29f6777f329a4ac862dda5e699deab525491d82cae'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://silverback.s3.amazonaws.com/silverback#{version.major}.zip"
  appcast 'https://silverback.s3.amazonaws.com/release/appcast.xml',
          checkpoint: '87e80a6c66ebfc9ea8a683136686b4a80e45dc38d7dced8db4c4028bc59be0ba'
  name 'Silverback'
  homepage 'http://silverbackapp.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Silverback.app'
end
