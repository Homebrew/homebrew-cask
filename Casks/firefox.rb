cask 'firefox' do
  version '50.0.1'

  language 'de' do
    sha256 '8ca8fa12f359da21a7df62c8bd1081aa5945911c64c591d7726050092877ac8f'
    'de'
  end

  language 'en-GB' do
    sha256 '76096ea0c246f3c05731b3e60e9575b04ba729fa585d01b38e162902c5d2b014'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '7516cddd6fbd4612243482f3c338b45f9fafed743629599912b4b55a9ae7af46'
    'en-US'
  end

  language 'fr' do
    sha256 '468c86e3498581d37cd63b99894c812e8985084f7f414eea5e6d8135aeeac341'
    'fr'
  end

  language 'gl' do
    sha256 '03cf35c7ec794558ec471de57841a88ef32235b04b9405ba71a5ffd3f157a124'
    'gl'
  end

  language 'it' do
    sha256 '5d96b45f2ba502bf821d6802e8678a84833b8119ede6208023d94b1e78a10248'
    'it'
  end

  language 'ja' do
    sha256 '0b0592745e739b7a15e3da15da80f5a5d3cf8f57aa28b32ecb77a70472b11579'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '877ee8c7096e738e6bdf43c06c458b45e9bf68139c2399940690689113e5327e'
    'nl'
  end

  language 'pl' do
    sha256 '6c2e77508ee7daa5abd8ef05b7f9d7cb26e3d14e0e7fc7e14d4d2afa18d54528'
    'pl'
  end

  language 'pt' do
    sha256 '0c772bc8f7a2d5203d8f0878f3fed99ef1790b42828141e3b7952a78a3f130f0'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6a2718a64a76a6100a19bc20be5c0460d2638156316667d861c2f5f4dd8be32b'
    'ru'
  end

  language 'uk' do
    sha256 '5a8b28095b6c37f1b8f2b17f420067015c294fedd20a1292827a919e86099bc0'
    'uk'
  end

  language 'zh-TW' do
    sha256 'dae7e49da3872e66eb0fe1ce4f4ac80b7ecc21659c72c988731d55f0127c58c5'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ab5dcbc7cabf0982d5e5b876bf474cb157e49e8fd5f10fbae6e884616c38136a'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'c35503797ec368c7db29d198cf2a67fa8d040f4850ce7cf3c035424b583b0daf'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
