cask 'publish-or-perish' do
  version '7.20.2780'
  sha256 'a9d4156b1ffd5ea6809d0f99c9ccc4fc677f68c3cb60270b6b870f9ec7e1e8b4'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
