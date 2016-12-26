cask 'brl-cad' do
  version '7.24.0'
  sha256 '5fe9eb9f5a2eb5544cf459b02e7e880040e02d1312d04c2207b90a731ebd8f0f'

  # downloads.sourceforge.net/brlcad was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/brlcad/BRL-CAD%20for%20Mac%20OS%20X/7.24.0/BRL-CAD%207.24.0.dmg'
  name 'BRL-CAD'
  homepage 'http://brlcad.org/'

  depends_on x11: true

  app "BRL-CAD : MGED #{version}.app"
end
