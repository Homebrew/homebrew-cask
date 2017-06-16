cask 'adobe-bloodhound' do
  version '3.1.1'
  sha256 '37db031a52f9cb9c40b8ead08ee6247192b0c2853e5ce95407fc840c3c50d715'

  # github.com/Adobe-Marketing-Cloud/mobile-services was verified as official when first introduced to the cask
  url "https://github.com/Adobe-Marketing-Cloud/mobile-services/releases/download/Bloodhound-v#{version}-OSX/Bloodhound-#{version}-OSX.dmg"
  appcast 'https://github.com/Adobe-Marketing-Cloud/mobile-services/releases.atom',
          checkpoint: '72bb527592738d6f10e62265fc35a47091ab1aac2673a13293eb3c295a0d7b7f'
  name 'Adobe Bloodhound'
  homepage 'https://marketing.adobe.com/resources/help/en_US/mobile/bloodhound/'

  app 'Adobe Bloodhound.app'
end
