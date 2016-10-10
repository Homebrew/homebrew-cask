cask 'management-tools' do
  version '1.9.1'
  sha256 'a1a85f2ade234f82fc1b54761a5b26578fc4d7ee0088a0eb07c10ed0c743850a'

  url "https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases/download/v#{version}/Management_Tools_#{version}.dmg"
  appcast 'https://github.com/univ-of-utah-marriott-library-apple/management_tools/releases.atom',
          checkpoint: '1437803314ab96c09e68cf2f01571ca15e77fbc20cdbf61bc5c8d2627df821ff'
  name 'Management Tools'
  homepage 'https://github.com/univ-of-utah-marriott-library-apple/management_tools'

  depends_on macos: '>= :mountain_lion'

  pkg "Management Tools [#{version}].pkg"

  uninstall pkgutil: 'edu.utah.scl.management-tools'
end
