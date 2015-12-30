cask 'management-tools' do
  version '1.9.0'
  sha256 '43cd5344c2516aadb22f2b6966da65acabf58faa21ff5fb2a03378aea5041c5b'

  url "https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases/download/#{version}/Management_Tools_#{version}.dmg"
  appcast 'https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases.atom',
          :sha256 => '760b5de7eb53ece08af96b8f1a27b3e96b287ad7d3e5c51b1bd684317ea5eb52'
  name 'Management Tools'
  homepage 'https://github.com/univ-of-utah-marriott-library-apple/management_tools'
  license :mit

  pkg "Management Tools [#{version}].pkg"

  uninstall :pkgutil => 'edu.utah.scl.management-tools'

  depends_on :macos => '>= :mountain_lion'
end
