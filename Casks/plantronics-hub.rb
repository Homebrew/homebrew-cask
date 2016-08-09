cask 'plantronics-hub' do
  version '3.8.2'
  sha256 'da4265a9e65193d9c11a6a231c5c5f20822969e2f65d534d1f4844347cd1ef35'

  url "https://www.plantronics.com/media/downloads/PlantronicsHub-#{version}.dmg"
  name 'Plantronics Hub'
  homepage 'https://www.plantronics.com/au/product/plantronics-hub-desktop'
  license :gratis

  pkg 'Plantronics Software.pkg'

  uninstall pkgutil: [
                       'com.plantronics.plantronicsSoftware.PlantronicsHub.pkg',
                       'com.plantronics.plantronicsSoftware.preflight.pkg',
                     ]
end
