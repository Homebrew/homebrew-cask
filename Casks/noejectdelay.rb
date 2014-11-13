cask :v1 => 'noejectdelay' do
  version '5.4.0'
  sha256 '7b480ade6537a2d98924ad1dabf87b8f3d396c2035addfd032839c2473659c21'

  url "https://pqrs.org/macosx/keyremap4macbook/files/NoEjectDelay-#{version}.dmg"
  homepage 'https://pqrs.org/macosx/keyremap4macbook/noejectdelay.html.en'
  license :unknown

  pkg 'NoEjectDelay.pkg'
  uninstall :kext => 'org.pqrs.driver.NoEjectDelay',
            :pkgutil => 'org.pqrs.driver.NoEjectDelay'
end
