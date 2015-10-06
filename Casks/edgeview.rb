cask :v1 => 'edgeview' do
  version '0.9985'
  sha256 '763e583b8cce31214567e934d22d8ae5ce2cbef67a455d0e7ff583b2ba4eb0a4'

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
