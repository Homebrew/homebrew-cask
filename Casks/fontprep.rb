cask :v1 => 'fontprep' do
  version '3.1.1'
  sha256 '769d64b78d1a8db42dcb02beff6f929670448f77259388c9d01692374be2ec46'

  url "https://github.com/briangonzalez/fontprep/releases/download/v3.1.1/FontPrep_#{version}.zip"
  homepage 'http://fontprep.com'
  license :gpl

  app 'FontPrep.app'
end
