cask :v1 => 'eid-mw' do
  version '4.0.7'
  sha256 'e433fee88bf1090e485307beb31733bb76abb41f2ab7cb64c3c2d29de9ffe66f'

  url 'http://eid.belgium.be/nl/binaries/beid407_tcm227-262905.dmg'
  name 'eID'
  homepage 'http://eid.belgium.be/'
  license :oss

  pkg 'beid-407-signed.pkg'

  uninstall :pkgutil => 'be.eid.middleware'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
