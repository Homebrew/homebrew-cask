cask :v1 => 'bandage' do
  version '0.5.6'
  sha256 '18ae1e8ce15741577ca3c6517be77c4c0bf105d2b38f06d1ac4b1a1875e67217'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
