cask 'firefox' do
  version '56.0.1'

  language 'cs' do
    sha256 'fe7a8a7c6b29e4c90b1a8a08d575772227dcb0bce464e03b95aee419318b2da5'
    'cs'
  end

  language 'de' do
    sha256 '42b7f8b7e510be2364af9a2c300e1a6851302c2320fcdb8842eada55f4a80d42'
    'de'
  end

  language 'en-GB' do
    sha256 'fdc2c54538fb46c15aa94946a6a911855ff12289e6884b12a8e0e3af20078b13'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '1733d60d2501e06a820cecf3d7fc3dda408b887043128160e21ad403ac967244'
    'en-US'
  end

  language 'es-AR' do
    sha256 'f9ab9c6d37463ade9760a4e7da04a32f69b71c9ad15b35e683dc075c4e974303'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '139ee54b82de5842359097d403db491d63355d252d4feabc328f09b721be4f30'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '2c1319c519dc33d39b71578cfd86c518be021f151120df8cfe2a4b2474ea813f'
    'es-ES'
  end

  language 'fi' do
    sha256 '7d7e50f8a8f6bae98109ee9ad833476270251c40fc28f517bf40070c81d0ff13'
    'fi'
  end

  language 'fr' do
    sha256 'a735b2d3ad1eb4be21f3dd4b985ce7a6790f064c71738ed5c2e48bf881924217'
    'fr'
  end

  language 'gl' do
    sha256 'fc29a3bc8027d0ee09c2d47dddc8be6d7cea992199e00e2ea2aedf9ac89d7fba'
    'gl'
  end

  language 'in' do
    sha256 '7e4b59475db55606925c10eddfe8c07bcbf634c446abfbe62b69bdd185d5a5fd'
    'hi-IN'
  end

  language 'it' do
    sha256 'f5d7f9d9489ebcb888135cb97f4742043bd3899225df1308cc1b171faff48c7f'
    'it'
  end

  language 'ja' do
    sha256 '7815d8ec5c08a03a5a6f62fb59499cbabbff004f5f7948a5ea6297253fb70d84'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'b198c94745b5fdfdbb35241aa897c22e6bc78b9cc5dd906982c98ebd3f323704'
    'nl'
  end

  language 'pl' do
    sha256 'b38ef7ced7ecd7180013cf85278715716566f1d55025aae087464767231be97e'
    'pl'
  end

  language 'pt' do
    sha256 'f7576df5e8190f743e720cec8cd00ef1c94dd5b9e6bf3c7359558140f3e52ed4'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'bacc5da9342ecc368e8e0dbf9ed9f13f9234dea86ff9311918bc8078f7d516ee'
    'pt-BR'
  end

  language 'ru' do
    sha256 '17311ec37a9c2b4b069b1eca94d1c605750005d44b3d2ca4b37f8a3fe68c633a'
    'ru'
  end

  language 'uk' do
    sha256 'b37aa2858fdbf73eedd9cb71ac81800aaed532f7a4ff5d97171e1f8c49b7d21e'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2161259176506d9d6d304623b8de8654e7d368c7f38e95a04696bdd947916c33'
    'zh-TW'
  end

  language 'zh' do
    sha256 '0632278b85a649647094f156a3325d87fa1a74b336be4464a307929dd93074d1'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'e0dadbc9cd1f1bd8ce3118cc3383e0d0f6d147f055265d498d99deea956ba00f'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/firefox_*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Caches/Firefox',
                '~/Library/Caches/Mozilla/updates/Applications/Firefox',
              ],
      trash:  [
                '~/Library/Application Support/Firefox',
                '~/Library/Preferences/org.mozilla.firefox.plist',
              ],
      rmdir:  [
                '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
                '~/Library/Caches/Mozilla/updates/Applications',
                '~/Library/Caches/Mozilla/updates',
                '~/Library/Caches/Mozilla',
              ]
end
