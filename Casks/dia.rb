cask 'dia' do
  version '0.97.2-7'
  sha256 '9d3038c01347716800688830eaf52204deb78affe74a5f0c6e0a48fd414d44be'

  # sourceforge.net/dia-installer/dia was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/dia-installer/dia/#{version.sub(%r{-.*}, '')}/Dia-#{version}.dmg"
  name 'Dia'
  homepage 'http://dia-installer.de/'
  license :gpl

  depends_on x11: true

  app 'Dia.app'

  postflight do
    system '/usr/bin/sed', '-i', '--', 's/exec/exec env DISPLAY=:0/g', "#{staged_path}/Dia.app/Contents/Resources/bin/dia"
  end
end
