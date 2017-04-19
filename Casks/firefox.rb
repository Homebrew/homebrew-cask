cask 'firefox' do
  version '53.0'

  language 'de' do
    sha256 '9598b9cd660619147d8593c64dd0bc0dcd0473adc780b93acf8fac8056b6b086'
    'de'
  end

  language 'en-GB' do
    sha256 '8f29a4fb7a39d46da512674e8f26699bde69e5c52130c8634c8398c039d3064d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6010f574b54e79060ebce8cce50cb19bfe82066b36ea84dff6f323299dcf47bc'
    'en-US'
  end

  language 'es-AR' do
    sha256 '9f235ad092c9cb562291e7f4d4d6b67c691d7b79dffc5e033f7a1ad683dba0e1'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '3f53175ad89d109837fe6ecbdf3f14a99e6c05414bcf2d34e61a06aeb3e4fa6b'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e10fd368619ad63952dd9b7c87cfca893ee92b65b1d8d956ba039671598e718a'
    'es-ES'
  end

  language 'fr' do
    sha256 '89af9c2f0ebb82f9b8bc0a9fadd58fc470ffce36005fafd041774ea00a07539c'
    'fr'
  end

  language 'gl' do
    sha256 '1164f95b60ba14d35220dbd4e9f938e77a9a1ddab76d3f5c19ab6b15f0f79128'
    'gl'
  end

  language 'in' do
    sha256 '162161f3975a3ad1e6faefac957f38270d23f56326f29eb1a620c741cd19dd82'
    'hi-IN'
  end

  language 'it' do
    sha256 'baee090e5785dd4d051ee6464ca8db6612a06e034ef232a32d8f65189e2e8d77'
    'it'
  end

  language 'ja' do
    sha256 '993cb253f626460bb2be007dba62475452c9da442dd2ecd1675e7dd2d61fab44'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'fe9d16b9be4d1719e19a0ef4ee32ca7453ee23dc4c0479ea772f5b01e55f848d'
    'nl'
  end

  language 'pl' do
    sha256 'aea3ccfcbaacec53aee07a0d9414df772731c8644ccbdc0474a5cafd5ab783c3'
    'pl'
  end

  language 'pt' do
    sha256 'ac81c93422921fecc68a024b30ff15cde36c5868a6b2126d9dff3054612bcc2a'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '03ee36e26c341927f96244d9cf7bf4db78ca602b6693ed185c705091d8ed68e0'
    'pt-BR'
  end

  language 'ru' do
    sha256 'b9865dbc25493a944c3ac57d8ca14304f55e9f0629ab472a5d93350765ebdac7'
    'ru'
  end

  language 'uk' do
    sha256 '329df3d472228cad7ab431af62c35237ff5afafd87c506bac30ae08df1cd7e58'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3182b2370377597e9e6e899e41dea8afd5b8f482d2cbf3d05a1661772985df53'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6c10b1f3d65be02aec264e17736cdab4c2ad45a987a1ad4f08eb1c937fb3d22e'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '9caabb97d8e03057db992fc8ac27546c2c76161ba26e75502b1a446cd4443d8c'
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
