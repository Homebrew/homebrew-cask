cask 'publish-or-perish' do
  version '7.24.2867'
  sha256 'a9756d5af600ce0951c71c3adad165132ab247c61ea838c1da16cbcc2d42769e'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
