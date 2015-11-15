cask :v1 => 'privacy-services-manager' do
  version '1.7.2'
  sha256 '0d7a5e7431d5a44d7b1ddcc8e59fa3672d573a9203c45b620daee695444de040'

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
