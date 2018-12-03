cask 'sketchup-pro' do
  version '18.1.1180,2018'

  language 'de' do
    sha256 'd8fb63eec83cf1e64ba68ff06755f373da12e63bc9bef927c9d5b3e544e1626f'
    'de'
  end

  language 'en', default: true do
    sha256 'aaeaa823ee1db74585b600bfc363d717188e361f1e95e5fb5d1000ba4bc47b4f'
    'en'
  end

  language 'es' do
    sha256 '2a13b998ae83d3354e6be07ae208537cd38e9cda5baac19c6bb088a2e86f79ad'
    'es'
  end

  language 'fr' do
    sha256 '192cb3f26cee9a9556067eded1b77c4482bb4c4b3efdf3df5ef243b0b8d0414a'
    'fr'
  end

  language 'it' do
    sha256 '28e443dc87ad6daafa4c33e3babf456aa47f2db9e8ba0ab738b653132688e09a'
    'it'
  end

  language 'ja' do
    sha256 '2b0f3d0ff0144cf6367960bf7f4f2457fafba74f03e0a81129c7ac0c9f703903'
    'ja'
  end

  language 'ko' do
    sha256 'bb7864ced0ba83541067b7cc075940409fb07b6596090d8947d4f70d640a2d63'
    'ko'
  end

  language 'pt-BR' do
    sha256 'a81dbb9d18885aae32d51adba55509a8975051257c9bffd40aa4adbd1e61801a'
    'pt-BR'
  end

  language 'ru' do
    sha256 '418aed304178c9f99f01e0fcbab953da8c15c9fab7fb6217a0cedd0f3d6edb26'
    'ru'
  end

  language 'sv' do
    sha256 'e70e76bae643ee1b063140363cc27b9272227d5084e7294058a06a4a74baf88b'
    'sv'
  end

  language 'zh-CN' do
    sha256 'd82664ec70e952422fab0ed75fb150f8543f4cb7884a2e94b334895f4997bdaf'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '106aa2b6995cce2075b60e61e1b355d421c02ac058842915e9ef5a5d03ceb7bd'
    'zh-TW'
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version.after_comma}"

  zap trash: [
               "~/Library/Application Support/SketchUp #{version.after_comma}",
               "~/Library/Caches/com.sketchup.SketchUp.#{version.after_comma}",
             ]
end
