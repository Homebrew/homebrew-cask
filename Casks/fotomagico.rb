cask :v1 => 'fotomagico' do
  version '4.3.1-18650'
  sha256 'ad4fff8a197424cc02770ca7bf2f71fe78abf5428a234b098d4589133fd16b39'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version}.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso'
  name 'FotoMagico'
  homepage 'http://www.boinx.com/fotomagico/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FotoMagico.app'
end
