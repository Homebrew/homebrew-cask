cask 'firefox' do
  version '58.0'

  language 'cs' do
    sha256 'd6ee21a01361dd8388d83389e7864a9e937f8e76be445339e825d01a9145ef91'
    'cs'
  end

  language 'de' do
    sha256 '653c61ae0037c22acf93d5a6b9115ff6461512ac035623c274fe3d7e088781df'
    'de'
  end

  language 'en-GB' do
    sha256 '1aa91b1b0ac01c0b219615782f0dffdba36cb70248ce6ec1ec5d794d0ef1e1e7'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a853eb20821a21c0bedeb0263d7b5975e7704f20b78edfef129c73804b1fb962'
    'en-US'
  end

  language 'es-AR' do
    sha256 '67b76f63ac467119f71528cf049f2beb52733059e349605fad168ba835e2003e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5ac8edc86287f0309f1cd914dc508e7ea424556cc50c130fffa7a8f5789a6558'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '163a537da955e4aa8a8adb984d8cc6f0c30b10db40450d7d122b40b4d7de2eb7'
    'es-ES'
  end

  language 'fi' do
    sha256 'c76f65ce46f288e7ae0a26c11f98bb72bc390faba1d0e31e1e2fe3549328a79f'
    'fi'
  end

  language 'fr' do
    sha256 '39a15c409de3fa5c9ce9bfcfc2ea21f97aeb33e1c2944d2a026ebdc0f5b8b6c7'
    'fr'
  end

  language 'gl' do
    sha256 '392bc3242c1c42de02b0e9ab675a85058b8d2f8c8d2ffb41a78eb0f287d3fe8f'
    'gl'
  end

  language 'in' do
    sha256 '33c82bbb2a12808d1e1c292fd59ed5debc3fc5b0f3706d13b573973e8d1dd0f5'
    'hi-IN'
  end

  language 'it' do
    sha256 'a3c521971dd1777bd399194948a4d5af053e166af8fd996c37e911753b10aaf9'
    'it'
  end

  language 'ja' do
    sha256 '6bf4b90234bed68038b0981db8b554280228e768e282cd3b7eecb9f790f573b3'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '58e217412ccc6a89ccb190b8678c211d11b78a2c91fa47e90706ef96a192fbbb'
    'ko'
  end

  language 'nl' do
    sha256 '8b4590928d60ddc08acdb75501632a8ecb822c40f878ceefb69363c145ec3150'
    'nl'
  end

  language 'pl' do
    sha256 'aaf515954dbf71ecfa73a2266dff9e5783bea9cf029c2ea17a94ecb28ad5d40d'
    'pl'
  end

  language 'pt' do
    sha256 '7a326436638c3c02a113e3c3c724256e6c46369e70d0924f40857252b4cf34e9'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '364227905796dcf641ee5e8d3d190d56c84989deba367848d9195cd3bd8c49dd'
    'pt-BR'
  end

  language 'ru' do
    sha256 'a5a8a074f1df61d4e56fd3ef4fd5e6805fdc17913ac3f65793bbbe2744b221b0'
    'ru'
  end

  language 'tr' do
    sha256 '37756fcac54b7c98d311085e7282f0a6eab045041716ec86e91be32e70e01d7f'
    'tr'
  end

  language 'uk' do
    sha256 '6ffc143b6e9085e858bbc1a2bc14348c6c4d5d4bf5062671429739cde3b3c967'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1eeb5dbd9f7ddf64f2828dcf5bd14ddbb138566152229c4cee8bb8c1c7fdd402'
    'zh-TW'
  end

  language 'zh' do
    sha256 '896ca06defc45bf9f5cef8ae2746865b2fcc9d26f6ae66e22ea47bc2de497d31'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '4603316c5b3dfba0857e1a969f7526f2ab4b4275d2d88081810441a7db367553'
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
