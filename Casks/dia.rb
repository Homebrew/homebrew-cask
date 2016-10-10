cask 'dia' do
  version '0.97.2-7'
  sha256 '9d3038c01347716800688830eaf52204deb78affe74a5f0c6e0a48fd414d44be'

  # sourceforge.net/dia-installer/dia was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dia-installer/dia/#{version.sub(%r{-.*}, '')}/Dia-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/dia-installer/rss?path=/dia',
          checkpoint: '7eaa27518317fea3154dd57dbd257e04371d18599e4447e1ad501c7d275f60a9'
  name 'Dia'
  homepage 'http://dia-installer.de/'

  depends_on x11: true

  app 'Dia.app'

  postflight do
    system '/usr/bin/sed', '-i', '--', 's/exec/exec env DISPLAY=:0/g', "#{appdir}/Dia.app/Contents/Resources/bin/dia"
  end
end
