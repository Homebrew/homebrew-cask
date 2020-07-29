cask 'publish-or-perish' do
  version '7.21.2811'
  sha256 'f4b7f423d01b4f70d67a5b6582037de5d636669b62427c48f5d523b491d7c204'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  depends_on macos: '>= :high_sierra'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
