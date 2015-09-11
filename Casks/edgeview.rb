cask :v1 => 'edgeview' do
  version '0.970'
  sha256 'd32e61cd7b309de1be168e32ed8c0e28cd561a8ec4745c5e9129e00ef8e992c2'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.sub(%r{^\d+\.},'')}.zip"
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          :sha256 => 'c68970c8104ce2cc5cf9796abff746051f0632ae8872647327a557f845196813',
          :format => :sparkle
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EdgeView.app'
end
