cask 'firefox' do
  version '66.0'

  language 'cs' do
    sha256 '9afffdebfa7d4359a7a2dc6af2233f7c8ae9b549ffdadad9e0291aac020ad9e2'
    'cs'
  end

  language 'de' do
    sha256 '690c4f755b1857bcac2317608637f08447b1df4c58f6c4d71a78b35954b75357'
    'de'
  end

  language 'en-GB' do
    sha256 '62e0bc1c5183bcc12b4bb44c4e82a99012e9d8d7e1f571da0bfc4675e3c1d2ce'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '64e15f0e2a977ea9e1d3a14c674ebf84ee6234f896e719d6c57aeecd8785fa78'
    'en-US'
  end

  language 'eo' do
    sha256 '7ddb36cb97644a23921171b65bc0bbd12ca9e29ca105dd646deed3fe4ff5cef4'
    'eo'
  end

  language 'es-AR' do
    sha256 '97c7d52e9a59a705fb209d1a0a545fdfc8c10eabb68a1a533fd856c9d0eaccf7'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '17e49bb35bb6ae2a25fd81d6a4cba7a72202bb5077aad642c55bd67fd0b7eac5'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '8e59aa6e65177e19153698c1fd86cb93623b27d031ce17508171fd1d22fd5aad'
    'es-ES'
  end

  language 'fi' do
    sha256 'd4cba19aac14d08afcf6709676b933bb50123bf7b3c5147c0f048376f763fd1d'
    'fi'
  end

  language 'fr' do
    sha256 '26046825f7666b73152fda65af56cd47d36ee914f76a3ac358d64552aabf7243'
    'fr'
  end

  language 'gl' do
    sha256 'f08ad9010238b55d3423829083c6d73d6f2e964db96ea223bd8a41318e9bfa5b'
    'gl'
  end

  language 'in' do
    sha256 '1f194954709b5e4ca8c5bcdb15a35613f2b06f0ff900a0856c6edb1585ead4e0'
    'hi-IN'
  end

  language 'it' do
    sha256 '9026124774e4f7950b4d093b4f2a4b7d05ec4f8a1e021294268523ac99527e8b'
    'it'
  end

  language 'ja' do
    sha256 'a5c4ebc9dde2b0f1a04f87c99c296c0c7d5003f8cfb305c6e94fce17c5815253'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '9c084947d388a9a5ee53f15b221602b805e9154eb4631e7f49852d3593362540'
    'ko'
  end

  language 'nl' do
    sha256 'ae737763371269762c4c417f84f8c3c5a8df536ab08b8a8a8d18ef4d68374baa'
    'nl'
  end

  language 'pl' do
    sha256 '5f2ec9136e2d81589f65f53531fc23364be77c51ee3e09db39a5fc947f138272'
    'pl'
  end

  language 'pt-BR' do
    sha256 '86ddcae1f38896ed25633982f32122336de516a5b521b2be0e04605edd4ee07c'
    'pt-BR'
  end

  language 'pt' do
    sha256 '3d719fa1768764a5634ee8a10afcd9f596b5657cf1b303f0b153d252968673e3'
    'pt-PT'
  end

  language 'ru' do
    sha256 '51bc0fdb36b5fdc512e4adf095a9f8020dfe916a07baafeb6a03e41b53553887'
    'ru'
  end

  language 'tr' do
    sha256 '8a998b6268bfe1b87799096b029d3377caaeeba13795fbc15a79ec0af55d74f9'
    'tr'
  end

  language 'uk' do
    sha256 '2723b1bd9895a12e8684be625f484989b468d236d3e8913dde9ef57a849a0f22'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c7424a80ae30bc324974e48299e19809ba8fff41ecba653a391756d900c04090'
    'zh-TW'
  end

  language 'zh' do
    sha256 '00ac90de0e6d8aa6127ec5e108b06663607c8c6fc2d6e2d50748d1887d8572fa'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true
  conflicts_with cask: [
                         'firefox-beta',
                         'firefox-esr',
                       ]

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
