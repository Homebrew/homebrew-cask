cask 'noejectdelay' do
  version '6.0.0'
  sha256 '52c478ccb9977a66fd9a6ba76b02e229521f70ee22c88c436581e8e46aa20807'

  url "https://pqrs.org/macosx/keyremap4macbook/files/NoEjectDelay-#{version}.dmg"
  name 'NoEjectDelay'
  homepage 'https://pqrs.org/macosx/keyremap4macbook/noejectdelay.html.en'
  license :public_domain

  pkg 'NoEjectDelay.pkg'

  uninstall kext:    'org.pqrs.driver.NoEjectDelay',
            pkgutil: 'org.pqrs.driver.NoEjectDelay'
end
