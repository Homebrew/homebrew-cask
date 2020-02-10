cask 'publish-or-perish' do
  version '7.18.2702'
  sha256 'c546fcb3a6c5cf0934bbf63fe37ce4ef39daea6b641d4d5675d2be37de1120dc'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
