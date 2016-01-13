cask 'edgeview' do
  version '0.9997'
  sha256 '5972e4db1508de88b838dd9287c56b20eea3dda9b5b52d88490897020368a6aa'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.sub(%r{^\d+\.}, '')}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          :sha256 => '9087dce8ef4596a40f6f2323016cda3c728f69b90ee4ebc83a69a439d096e431'
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EdgeView.app'
end
