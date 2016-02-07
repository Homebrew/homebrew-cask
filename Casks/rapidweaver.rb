cask 'rapidweaver' do
  version '6.3.7'
  sha256 '449818979e349c702f9cb5584963cda4eb2ec870bd15eb28f1e1ecef483c947d'

  # devmate.com/com.realmacsoftware.rapidweaver6 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver#{version.major}/RapidWeaver#{version.major}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml",
          checkpoint: '9fd5252c96daf8e8d2ed76ddee836dacd572114e15cc51f4c2e6d17ee7fb1dd4'
  name 'RapidWeaver'
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :commercial

  depends_on macos: '>= :leopard'

  app "RapidWeaver #{version.major}.app"
end
