cask '33-rpm' do
  version '1.1.8'
  sha256 '44937d70c41c20dd72ddfef6266c288beac66eeb01914cdc7901ae8111a4aa90'

  url 'http://www.edenwaith.com/downloads/33rpm.dmg'
  appcast 'http://www.edenwaith.com/xml/33rpm.xml',
          checkpoint: '0c2970847b2a18bb9d20f76dff6f172aab05d4ecfdabfc4a092bb4c098392877'
  name '33 RPM'
  homepage 'http://www.edenwaith.com/products/33rpm/'

  app '33 RPM.app'
end
