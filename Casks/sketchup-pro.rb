cask 'sketchup-pro' do
  version '19.0.684,2019'

  language 'de' do
    sha256 'd8f72144e0a69bffbf651d30b6ee0f430904151cd3f9baebe599b41b827dca5b'
    'de'
  end

  language 'en', default: true do
    sha256 '2b6256d90db763cb4ba9b2cfa0823373bc48401004249a6580094b2bf8f57294'
    'en'
  end

  language 'es' do
    sha256 'c1e937a4ce7f0bfd47ea716c945ba01aaa0b0fb944691e459fadb96aaec77b5e'
    'es'
  end

  language 'fr' do
    sha256 '6159a8f4cb9e9cfc16d482fdc012831adfd36fce7cca1fc6cca4be83e8646f7e'
    'fr'
  end

  language 'it' do
    sha256 '2a55ddf1bac89a8679a028e5bbba5b2c97782e7957d1b0eae9161bf654fe08ff'
    'it'
  end

  language 'ja' do
    sha256 '7807b581222e691ed62e52f07a6b73a646e6a6d49226d1c5a9c1cfcb7c5938e3'
    'ja'
  end

  language 'ko' do
    sha256 'b50821624137bbb8684e3bf417a4c51b864a118a44da660aff3c9a7b18f530a1'
    'ko'
  end

  language 'pt-BR' do
    sha256 '1d3420c01dbc0412b71641c6fb3eea24bba479ccac15188ef00ee11cedc3e8ee'
    'pt-BR'
  end

  language 'ru' do
    sha256 '404e6a54f5c19f5de219c2d5a6d66e03fbf38bfc675842d138e369135a84ffad'
    'ru'
  end

  language 'sv' do
    sha256 'b38802b24ef913ede21fb3bb5db8f36ab45e73627444cd327884c7adfa9cccdc'
    'sv'
  end

  language 'zh-CN' do
    sha256 'cedd3c71f1a770ba5ea05473ae796564487358c5bd6bf1146ae4a8f581369161'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '9d86ab385c16dc7cc529317f9604d8808f9f1ca5db1e8a6c60855c112c594749'
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
