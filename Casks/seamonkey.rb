cask 'seamonkey' do
  version '2.49.4'

  language 'de' do
    sha256 '8a634207b1c2f176ac06fd3c996cd57ffe00bee88946b3249901bfef8c574cd0'
    'de'
  end

  language 'en-GB' do
    sha256 '7ec831df90187daaf616ae6fca6ff5746ba12f36d08537484ab82e791f8d70ab'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '0afaa36a1be1f3b082e094fff7213c2d578fc5e3f4c6724c3d4e34a98bd537b6'
    'en-US'
  end

  language 'fr' do
    sha256 'f83da993f99e682e85947683d7fd99c8e4ba04cd5c6e198dfc9d96ce05803b73'
    'fr'
  end

  language 'it' do
    sha256 '57506a0b5cf47443f275b889b3d04653fb33d203239514cc53b992f845f5780e'
    'it'
  end

  language 'ru' do
    sha256 'a7bb1b5b3b12015e8721b2f16ae4946dfbc0b824895b38caad131465d458c469'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/SeaMonkey%20#{version}.dmg"
  appcast 'https://www.seamonkey-project.org/releases/'
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
