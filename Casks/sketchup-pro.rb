cask 'sketchup-pro' do
  version '20.1.228,2020.1'

  language 'de' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'de'
  end

  language 'en', default: true do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'en'
  end

  language 'es' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'es'
  end

  language 'fr' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'fr'
  end

  language 'it' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'it'
  end

  language 'ja' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'ja'
  end

  language 'ko' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'ko'
  end

  language 'pt-BR' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'pt-BR'
  end

  language 'ru' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'ru'
  end

  language 'sv' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'sv'
  end

  language 'zh-CN' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '54c9ec6e7c13d920be52d63a83f17487b219473fcd7a2920ee36957af08f1815'
    'zh-TW'
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  appcast 'https://help.sketchup.com/en/release-notes-0'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  installer manual: 'Double-Click to Install Sketchup.app'

  uninstall delete: "/Applications/SketchUp #{version.after_comma}"
end
