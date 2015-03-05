cask :v1 => 'management-tools' do
  version '1.5.13'
  sha256 '439ccc0a690d2c995bfb7d1b91d30732cabbd8e00163b3c84b43a2b19c547d8f'

  url "https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases/download/v#{version}/Management_Tools_#{version}.dmg"
  name 'Management Tools'
  homepage 'https://github.com/univ-of-utah-marriott-library-apple/management_tools'
  license :mit

  pkg "Management Tools [#{version}].pkg"

  uninstall :pkgutil => 'edu.utah.scl.management-tools'

  depends_on :macos => '>= :mountain_lion'
end
