cask 'publish-or-perish' do
  version '7.23.2852'
  sha256 '94dbf1ce0b56eded8344ffc2ceb62abdfb64da8cf8dbc6714bcc6c433a5d97c5'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
