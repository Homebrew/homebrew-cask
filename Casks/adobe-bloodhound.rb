cask 'adobe-bloodhound' do
  version '3.1.1'
  sha256 '37db031a52f9cb9c40b8ead08ee6247192b0c2853e5ce95407fc840c3c50d715'

  # github.com/Adobe-Marketing-Cloud/mobile-services was verified as official when first introduced to the cask
  url "https://github.com/Adobe-Marketing-Cloud/mobile-services/releases/download/Bloodhound-v#{version}-OSX/Bloodhound-#{version}-OSX.dmg"
  appcast 'https://github.com/Adobe-Marketing-Cloud/mobile-services/releases.atom',
          checkpoint: '041dab602b594331fcb9de739b1c5ea1f1bd52b6586a326a75d31be764a5ff20'
  name 'Adobe Bloodhound'
  homepage 'https://marketing.adobe.com/resources/help/en_US/mobile/bloodhound/'

  app 'Adobe Bloodhound.app'
end
