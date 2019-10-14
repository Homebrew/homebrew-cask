cask 'ipass' do
  version :latest
  sha256 :no_check

  # cdn-static-prod.qakr0.net was verified as official when first introduced to the cask
  url 'https://cdn-static-prod.qakr0.net/packages/iPass_Mac.dmg'
  name 'iPass'
  homepage 'https://www.ipass.com/'

  pkg 'iPass.pkg'

  uninstall pkgutil: 'com.ipass.ipass.pkg',
            quit:    'com.iPass.iPass'
end
