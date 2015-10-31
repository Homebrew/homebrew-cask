cask :v1 => 'electrum' do
  version '2.5.2'
  sha256 '581adb651879c0bc9ed66cc4754aa8c624a986008aa6b95373b1c4f624aec2bf'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '6694d8de7be8ee5631bed9502bd5824b7f9470e6'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
