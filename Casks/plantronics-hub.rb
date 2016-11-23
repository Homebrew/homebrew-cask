cask 'plantronics-hub' do
  version :latest
  sha256 :no_check

  url 'https://www.plantronics.com/media/downloads/PlantronicsHubInstaller.dmg'
  name 'Plantronics Hub'
  homepage 'https://www.plantronics.com/au/product/plantronics-hub-desktop'

  auto_updates true
  depends_on macos: '>= :yosemite'

  pkg 'Plantronics Software.pkg'

  uninstall pkgutil: [
                       'com.plantronics.plantronicsSoftware.PlantronicsHub.pkg',
                       'com.plantronics.plantronicsSoftware.preflight.pkg',
                     ]
end
