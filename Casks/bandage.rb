cask :v1 => 'bandage' do
  version '0.6.3'
  sha256 '91a896283e9f311ca805c5fcdb3ca1ed1be3c2e9a2bf457205c5ef3605cc9f74'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
