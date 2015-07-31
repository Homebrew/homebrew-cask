cask :v1 => 'privacy-services-manager' do
  version '1.6.8'
  sha256 '6224519a7974dc61b04599ea94018643189425a3402266f20a5c139d9469e823'

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
