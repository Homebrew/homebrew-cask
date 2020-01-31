cask 'sketchup-pro' do
  version '20.0.362,2020'

  language 'de' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'de'
  end

  language 'en', default: true do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'en'
  end

  language 'es' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'es'
  end

  language 'fr' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'fr'
  end

  language 'it' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'it'
  end

  language 'ja' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'ja'
  end

  language 'ko' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'ko'
  end

  language 'pt-BR' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'pt-BR'
  end

  language 'ru' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'ru'
  end

  language 'sv' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'sv'
  end

  language 'zh-CN' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 'ae45c9cf205ec08df430cfbe055afe652eaf4b4ce13a7915c2034c5880658dd2'
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
