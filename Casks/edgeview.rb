cask :v1 => 'edgeview' do
  version '0.9997'
  sha256 '5972e4db1508de88b838dd9287c56b20eea3dda9b5b52d88490897020368a6aa'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.sub(%r{^\d+\.},'')}.zip"
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          :sha256 => '8a84065711f6ef777e9264c988bfdcb53494d04f23ec1aed04e3056c8b4abd7a',
          :format => :sparkle
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EdgeView.app'
end
