cask 'rapidweaver' do
  version '6.3.7'
  sha256 '449818979e349c702f9cb5584963cda4eb2ec870bd15eb28f1e1ecef483c947d'

  # devmate.com is the official download host per the appcast feed
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/RapidWeaver#{version.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml",
          :sha256 => '803dd5f2ae64bd7b7c136a84c717d601e45a34cc6c699c7cf4623f6c8b2b123c'
  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on :macos => '>= :leopard'

  app "RapidWeaver #{version.major}.app"
end
