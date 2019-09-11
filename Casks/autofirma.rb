cask 'autofirma' do
  version '1.6.5'
  sha256 '77b23710aee6120ad3a5d2363ae23199f086de56b9f624690e23c8bbebeadc15'

  # estaticos.redsara.es/comunes/autofirma was verified as official when first introduced to the cask
  url 'https://estaticos.redsara.es/comunes/autofirma/currentversion/AutoFirma_Mac.zip'
  name 'AutoFirma'
  homepage 'https://administracionelectronica.gob.es/ctt/clienteafirma'

  pkg "AutoFirma_#{version.dots_to_underscores}.pkg"

  # remove 'Autofirma ROOT' and '127.0.0.1' certificates from keychain (these were installed by pkg)
  uninstall_postflight do
    system_command '/usr/bin/security',
                   args: [
                           'delete-certificate',
                           '-c', 'AutoFirma ROOT'
                         ],
                   sudo: true

    system_command '/usr/bin/security',
                   args: [
                           'delete-certificate',
                           '-c', '127.0.0.1'
                         ],
                   sudo: true
  end

  uninstall pkgutil: 'es.gob.afirma',
            delete:  '/Applications/AutoFirma.app'
end
