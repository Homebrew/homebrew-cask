cask 'brl-cad-mged' do
  version '7.24.0'
  sha256 '5fe9eb9f5a2eb5544cf459b02e7e880040e02d1312d04c2207b90a731ebd8f0f'

  # downloads.sourceforge.net/brlcad was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/brlcad/BRL-CAD%20for%20Mac%20OS%20X/#{version}/BRL-CAD%20#{version}.dmg"
  appcast 'https://sourceforge.net/projects/brlcad/rss?path=/BRL-CAD%20for%20Mac%20OS%20X',
          checkpoint: '2eab38bc2e4ea3ece9faaf3d5d887130716427a3eaa92716f4d0aeb17e94f3a7'
  name 'BRL-CAD'
  homepage 'https://brlcad.org/'

  depends_on x11: true

  app "BRL-CAD : MGED #{version}.app"
end
