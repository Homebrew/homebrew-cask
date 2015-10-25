cask :v1 => 'edgeview' do
  version '0.9985'
  sha256 '763e583b8cce31214567e934d22d8ae5ce2cbef67a455d0e7ff583b2ba4eb0a4'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.sub(%r{^\d+\.},'')}.zip"
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          :sha256 => '53c2770f6a17d4b3b09e9f238721d547a3766266a5651f87c05450637a66b986',
          :format => :sparkle
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EdgeView.app'
end
