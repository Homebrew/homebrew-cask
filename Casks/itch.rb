cask 'itch' do
  version '23.4.1'
  sha256 '2b1308ba55a964fdd99a36f19f9b059adb8a382a4755e2f428dd55a59878e249'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '04f03e157d33a0d19fb1964e930b13d796bee3f20c907c7bbfa4c01af0c8c20c'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
