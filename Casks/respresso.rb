cask 'respresso' do
  version '0.9.6'
  sha256 '97202a34e9bce631efac4294f27b6d09efda1aa2b43b02486ff20748eae99f2e'

  # github.com/pontehu/respresso-client-ios was verified as official when first introduced to the cask
  url "https://github.com/pontehu/respresso-client-ios/releases/download/v#{version}/respresso-client-ios-v#{version}.zip"
  appcast "https://github.com/pontehu/respresso-client-ios/releases.atom"
  name 'Respresso'
  homepage 'https://respresso.io/'

  pkg 'respresso.pkg'

  uninstall pkgutil: 'hu.ponte.respresso-macos'
end
