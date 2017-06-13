cask 'sketchup-pro' do
  version '2017'

  language 'de' do
    sha256 '5c97409a3427ef10d36e9aa7e54f85c2a177bd364a7f8505fc547815f7685f5d'
    'de'
  end

  language 'en', default: true do
    sha256 'ee5d2001aa76c9ada0becb01cff2254820b293b795498cc1c7995121d979d469'
    'en'
  end

  language 'es' do
    sha256 'c894967cd9a46b5d8a5cc610a1b1002ac3ed29247e2270a1f65928e1a5b71997'
    'es'
  end

  language 'fr' do
    sha256 '54faacfee36f320886fb613632aabf8745faacb8fbbada46d8fef062702d835c'
    'fr'
  end

  language 'it' do
    sha256 '5c737e037d788bc0ef0c9f0ab053a61c8c690ae33dd76e4b8db1a8c354ad19e9'
    'it'
  end

  language 'ja' do
    sha256 '509b0e73ea9d92d1ffde308faee208eebb0522249bcc8a85c079f6563399d861'
    'ja'
  end

  language 'ko' do
    sha256 'c00d3908754e8ea69522292e43054a4ce5955f5559f7baa66cfea8ad60ded683'
    'ko'
  end

  language 'pt-BR' do
    sha256 'adc5bb30d5655db6b070baf07b232a2fd0b43e9e15f2af31ea47635b249f2268'
    'pt-BR'
  end

  language 'ru' do
    sha256 'd3183f1d966a8b513101d41bbd0bacdd76bb5138a6fbb6a80bb80e1f7bcda679'
    'ru'
  end

  language 'sv' do
    sha256 'f72b593bd22c0ad9482caf58d004ce7a024eb501d06e8d87288248381516d0d0'
    'sv'
  end

  language 'zh-CN' do
    sha256 'ca8ad25646406a43365308a948e723854bd2e1b2ab4622bdfcdbdd9dae86e943'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 'ea63cdba7208ad4b447c52305c5b60b206c049d383859e7c5d71071713f5e657'
    'zh-TW'
  end

  # downloads can be found at http://www.sketchup.com/download/all
  # trimble.com/sketchup was verified as official when first introduced to the cask
  url "https://dl.trimble.com/sketchup/SketchUpPro-#{language}.dmg"
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version}"

  zap delete: [
                "~/Library/Application Support/SketchUp #{version}",
                "~/Library/Caches/com.sketchup.SketchUp.#{version}",
              ]
end
