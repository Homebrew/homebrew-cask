cask 'fontprep' do
  version '3.1.1'
  sha256 '769d64b78d1a8db42dcb02beff6f929670448f77259388c9d01692374be2ec46'

  url "https://github.com/briangonzalez/fontprep/releases/download/v3.1.1/FontPrep_#{version}.zip"
  appcast 'https://github.com/briangonzalez/fontprep/releases.atom',
          checkpoint: '2d96c015ce34e1a5a5891838fff8c575779d2dac56bd39d135162b79f64083ed'
  name 'FontPrep'
  homepage 'https://github.com/briangonzalez/fontprep'

  app 'FontPrep.app'
end
