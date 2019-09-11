cask 'sketchup-pro' do
  version '19.2.221,2019'

  language 'de' do
    sha256 '7b5edb0a0d171e464e7d54a24b6fd69f9aa080d4627adbda850297ea65398840'
    'de'
  end

  language 'en', default: true do
    sha256 '4c12729fc4d0488527cafe1d3e9678be8e36ef5da25348799281144b518e293b'
    'en'
  end

  language 'es' do
    sha256 'ef5a9a4076a107effdc0f982460f02d313fa48dcf411641aee1499b649c1b53c'
    'es'
  end

  language 'fr' do
    sha256 '66323049b27848207c116b222c93580fdc3d7fa7e6fb2397724714e0657a91c0'
    'fr'
  end

  language 'it' do
    sha256 '0305187c3ad0b19352847bb937f8cde62ffd9d255291229c8476c0167ecb3748'
    'it'
  end

  language 'ja' do
    sha256 '5b1060e35e7d8b0e87263fe7689c23af8f6ede79443cdb9a98a2c2fef71a08e1'
    'ja'
  end

  language 'ko' do
    sha256 '9d5d4d8ddc5a131b0470c7a418e32e3b9beec0a5195384618a79c01504bf320c'
    'ko'
  end

  language 'pt-BR' do
    sha256 'e350c4fe50cac00331bbc4a8e70a549814376f16e5a858702032cca899d70f3f'
    'pt-BR'
  end

  language 'ru' do
    sha256 'a48658001cc1fa60a100b2442d5cf426c4c58c64d4880f921d8e449af7a0a775'
    'ru'
  end

  language 'sv' do
    sha256 '327fb5ad7cc4c2d99e8794762d9c39b63f059952b43a1e435e792f22962a65c9'
    'sv'
  end

  language 'zh-CN' do
    sha256 'f1afea6112ea1161e69b0e37031ce0b5222f65a4f67b4e98dc2c0132d627cc66'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 'd7b8735a681e298adfb419e39b4aed9270be6f7d94d54f8bc71dc51b425bd96e'
    'zh-TW'
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  appcast 'https://help.sketchup.com/en/release-notes-0'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version.after_comma}"

  zap trash: [
               "~/Library/Application Support/SketchUp #{version.after_comma}",
               "~/Library/Caches/com.sketchup.SketchUp.#{version.after_comma}",
             ]
end
