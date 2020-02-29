cask 'publish-or-perish' do
  version '7.19.2716'
  sha256 '5b3cd54ac45b717ca5eb02d0aac6142ae68eea940b94db001b4de7c821842e89'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
