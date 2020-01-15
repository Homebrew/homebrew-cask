cask 'publish-or-perish' do
  version '7.17.2685'
  sha256 'a2828912c358ef9dcfa033fc2ad973782c849a583cdca4521695b47ce47b9160'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
