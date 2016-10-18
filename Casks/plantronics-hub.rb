cask 'plantronics-hub' do
  version '3.8.3'
  sha256 '033b3e177192dea333955cbfffb1f0450a2dc96a065a0650295b5febc0a0c126'

  url "https://www.plantronics.com/media/downloads/PlantronicsHub-#{version}.dmg"
  name 'Plantronics Hub'
  homepage 'https://www.plantronics.com/au/product/plantronics-hub-desktop'

  pkg 'Plantronics Software.pkg'

  uninstall pkgutil: [
                       'com.plantronics.plantronicsSoftware.PlantronicsHub.pkg',
                       'com.plantronics.plantronicsSoftware.preflight.pkg',
                     ]
end
