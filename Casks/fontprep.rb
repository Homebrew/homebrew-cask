cask 'fontprep' do
  version '3.1.1'
  sha256 '769d64b78d1a8db42dcb02beff6f929670448f77259388c9d01692374be2ec46'

  url "https://github.com/briangonzalez/fontprep/releases/download/v3.1.1/FontPrep_#{version}.zip"
  appcast 'https://github.com/briangonzalez/fontprep/releases.atom',
          checkpoint: '0203f810a63e0b1cebe83abb424bfc04919ae861e592c13e476ae0e1e51fb343'
  name 'FontPrep'
  homepage 'https://github.com/briangonzalez/fontprep'

  app 'FontPrep.app'
end
