cask 'mirador' do
  version '1.4.2'
  sha256 '39980fc8e391d9e832fb56c862e7177dcb33c16e571338dce058f3dd74e8e753'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/latest-macos/mirador-#{version}-macos.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom',
          checkpoint: 'd941f12631b7d90773a77e345d03def8bde1b36a963d2079e9083778e06283d6'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end
