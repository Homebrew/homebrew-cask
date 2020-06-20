cask 'publish-or-perish' do
  version '7.22.2838'
  sha256 '7872b13ce4b8780b09e21ba4e8618ef084364956e876c504d9eccddb45bdc0a1'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
