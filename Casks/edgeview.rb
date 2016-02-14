cask 'edgeview' do
  version '0.9997'
  sha256 '5972e4db1508de88b838dd9287c56b20eea3dda9b5b52d88490897020368a6aa'

  # dropboxusercontent.com/u/168552 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.minor}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          checkpoint: '006594c1812dbf8a14cf909f05508dd965e4af1d58b3a27cd9fcffdf8752220e'
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EdgeView.app'
end
