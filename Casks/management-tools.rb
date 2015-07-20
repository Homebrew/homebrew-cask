cask :v1 => 'management-tools' do
  version '1.8.1'
  sha256 '959d87a4699fb9ec85f06313c2842dca0fc7e9e230dc992cd3ea05f03d76f0b7'

  url "https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases/download/#{version}/Management_Tools_#{version}.dmg"
  appcast 'https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases.atom'
  name 'Management Tools'
  homepage 'https://github.com/univ-of-utah-marriott-library-apple/management_tools'
  license :mit

  pkg "Management Tools [#{version}].pkg"

  uninstall :pkgutil => 'edu.utah.scl.management-tools'

  depends_on :macos => '>= :mountain_lion'
end
