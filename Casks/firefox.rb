cask 'firefox' do
  version :latest
  sha256 :no_check

  language 'en', default: true do
    'en-US'
  end

  language 'ach' do
    'ach'
  end

  language 'af' do
    'af'
  end

  language 'sq' do
    'sq'
  end

  language 'ar' do
    'ar'
  end

  language 'an' do
    'an'
  end

  language 'hy-AM' do
    'hy-AM'
  end

  language 'as' do
    'as'
  end

  language 'ast' do
    'ast'
  end

  language 'eu' do
    'eu'
  end

  language 'be' do
    'be'
  end

  language 'bn-BD' do
    'bn-BD'
  end

  language 'bn-IN' do
    'bn-IN'
  end

  language 'bs' do
    'bs'
  end

  language 'br' do
    'br'
  end

  language 'bg' do
    'bg'
  end

  language 'ca' do
    'ca'
  end

  language 'zh-CN' do
    'zh-CN'
  end

  language 'zh-TW' do
    'zh-TW'
  end

  language 'hr' do
    'hr'
  end

  language 'cs' do
    'cs'
  end

  language 'da' do
    'da'
  end

  language 'nl' do
    'nl'
  end

  language 'en-GB' do
    'en-GB'
  end

  language 'en-ZA' do
    'en-ZA'
  end

  language 'eo' do
    'eo'
  end

  language 'et' do
    'et'
  end

  language 'fi' do
    'fi'
  end

  language 'fr' do
    'fr'
  end

  language 'fy-NL' do
    'fy-NL'
  end

  language 'ff' do
    'ff'
  end

  language 'gd' do
    'gd'
  end

  language 'gl' do
    'gl'
  end

  language 'de' do
    'de'
  end

  language 'el' do
    'el'
  end

  language 'gu-IN' do
    'gu-IN'
  end

  language 'he' do
    'he'
  end

  language 'hi-IN' do
    'hi-IN'
  end

  language 'hu' do
    'hu'
  end

  language 'is' do
    'is'
  end

  language 'id' do
    'id'
  end

  language 'ea-IE' do
    'ga-IE'
  end

  language 'it' do
    'it'
  end

  language 'kn' do
    'kn'
  end

  language 'kk' do
    'kk'
  end

  language 'km' do
    'km'
  end

  language 'ko' do
    'ko'
  end

  language 'iv' do
    'iv'
  end

  language 'lij' do
    'lij'
  end

  language 'lt' do
    'lt'
  end

  language 'dsb' do
    'dsb'
  end

  language 'mk' do
    'mk'
  end

  language 'mai' do
    'mai'
  end

  language 'ms' do
    'ms'
  end

  language 'ml' do
    'ml'
  end

  language 'mr' do
    'mr'
  end

  language 'nb-NO' do
    'nb-NO'
  end

  language 'nn-NO' do
    'nn-NO'
  end

  language 'or' do
    'or'
  end

  language 'fa' do
    'fa'
  end

  language 'pl' do
    'pl'
  end

  language 'pt-BR' do
    'pt-BR'
  end

  language 'pt-PT' do
    'pt-PT'
  end

  language 'pa-IN' do
    'pa-IN'
  end

  language 'ro' do
    'ro'
  end

  language 'rm' do
    'rm'
  end

  language 'ru' do
    'ru'
  end

  language 'sr' do
    'sr'
  end

  language 'si' do
    'si'
  end

  language 'sk' do
    'sk'
  end

  language 'sl' do
    'sl'
  end

  language 'son' do
    'son'
  end

  language 'es-AR' do
    'es-AR'
  end

  language 'es-CL' do
    'es-CL'
  end

  language 'es-MX' do
    'es-MX'
  end

  language 'es-ES' do
    'es-ES'
  end

  language 'sv-SE' do
    'sv-SE'
  end

  language 'ta' do
    'ta'
  end

  language 'te' do
    'te'
  end

  language 'te' do
    'te'
  end

  language 'th' do
    'th'
  end

  language 'tr' do
    'tr'
  end

  language 'uk' do
    'uk'
  end

  language 'hsb' do
    'hsb'
  end

  language 'uz' do
    'uz'
  end

  language 'vi' do
    'vi'
  end

  language 'cy' do
    'cy'
  end

  language 'xh' do
    'xh'
  end

  url "https://download.mozilla.org/?product=firefox-latest&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
