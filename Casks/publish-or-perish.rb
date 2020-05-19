cask 'publish-or-perish' do
  version '7.21.2806'
  sha256 '47fe7bf74a73130a54ecdd3c03ff195f32096489ba5e2a66749db551458c1896'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
