cask 'publish-or-perish' do
  version '7.21.2799'
  sha256 '8716f699be7c5fd1fe82ecaad06ab0a3cf1b06d3549b3fc6f76cfbaf9ee83bd8'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
