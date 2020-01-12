cask 'publish-or-perish' do
  version '7.17.2677'
  sha256 'aec6387b10e8fbd7f85af4b377441a1472b04ac71d1e4f46d872409026d1d321'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
