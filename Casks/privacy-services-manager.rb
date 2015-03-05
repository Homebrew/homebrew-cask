cask :v1 => 'privacy-services-manager' do
  version '1.5.0'
  sha256 'fde9160728499ee1a24171b09f160b1e55892b59d8af7293ee3c5205766eb886'

  url "https://github.com/univ-of-utah-marriott-library-apple/privacy_services_manager/releases/download/#{version}/Privacy_Services_Management_#{version}.dmg"
  name 'Privacy Services Manager'
  name 'Privacy Services Management'
  homepage 'https://github.com/univ-of-utah-marriott-library-apple/privacy_services_manager'
  license :mit

  pkg "Privacy Services Management [#{version}].pkg"

  uninstall :pkgutil => 'edu.utah.scl.privacy_services_manager'

  depends_on :macos => '>= :mountain_lion'
end
