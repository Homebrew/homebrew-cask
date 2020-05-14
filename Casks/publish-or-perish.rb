cask 'publish-or-perish' do
  version '7.21.2782'
  sha256 'ac916558cda184fe5dd3c65236b154db8c4f0962d90b9b4c7b412fa71fb3e47e'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
