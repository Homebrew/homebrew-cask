cask :v1 => 'privacy-services-manager' do
  version '1.6.6'
  sha256 'fb8b26d0122719cfa52b0cd7fc9fa2d783b7fbf1589d63edfdd9b61338fcf902'

  url "https://github.com/univ-of-utah-marriott-library-apple/privacy_services_manager/releases/download/#{version}/Privacy_Services_Management_#{version}.dmg"
  appcast 'https://github.com/univ-of-utah-marriott-library-apple/privacy_services_manager/releases.atom'
  name 'Privacy Services Manager'
  name 'Privacy Services Management'
  homepage 'https://github.com/univ-of-utah-marriott-library-apple/privacy_services_manager'
  license :mit

  pkg "Privacy Services Management [#{version}].pkg"

  uninstall :pkgutil => 'edu.utah.scl.privacy_services_manager'

  depends_on :macos => '>= :mountain_lion'
end
