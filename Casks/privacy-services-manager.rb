cask :v1 => 'privacy-services-manager' do
  version '1.6.9'
  sha256 'd59db1d633c40f791578d7496ba3a6f94370fda24e64e6b8bafe9b4385b7a772'

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
