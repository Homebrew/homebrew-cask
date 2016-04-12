cask 'adobe-bloodhound' do
  version '3.1.1'
  sha256 '37db031a52f9cb9c40b8ead08ee6247192b0c2853e5ce95407fc840c3c50d715'

  # github.com/Adobe-Marketing-Cloud/mobile-services was verified as official when first introduced to the cask
  url "https://github.com/Adobe-Marketing-Cloud/mobile-services/releases/download/Bloodhound-v#{version}-OSX/Bloodhound-#{version}-OSX.dmg"
  appcast 'https://github.com/Adobe-Marketing-Cloud/mobile-services/releases.atom',
          checkpoint: 'e9d0e8fda3066d6016404e9e1f60c25ba57c1d499cccc9926289d8e685c0a456'
  name 'Adobe Bloodhound'
  homepage 'https://marketing.adobe.com/resources/help/en_US/mobile/bloodhound/'
  license :gratis

  app 'Adobe Bloodhound.app'
end
