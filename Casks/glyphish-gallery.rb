cask :v1 => 'glyphish-gallery' do
  version '2.0'
  sha256 'c5f224d44ecf4a853a51105d1fce8b4e3eab099ddc16791ce412a7a679b104a7'

  url "https://github.com/glyphish/gallery/releases/download/v#{version}/v#{version}.zip"
  homepage 'https://github.com/glyphish/gallery'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Glyphish Gallery.app'
end
