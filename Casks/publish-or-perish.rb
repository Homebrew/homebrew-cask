cask 'publish-or-perish' do
  version '7.15.2643'
  sha256 '22ead7a451e20b25fb1340ec8a553dd309a57e6d83d44a11c19913a2f7753319'

  url 'https://harzing.com/download/PoP7Mac.pkg'
  appcast 'https://harzing.com/resources/publish-or-perish/os-x'
  name 'Harzing Publish or Perish'
  homepage 'https://harzing.com/resources/publish-or-perish'

  pkg 'PoP7Mac.pkg'

  uninstall pkgutil: 'com.tarma.popmac.pkg'
end
