cask 'autofirma' do
  version '1.6.2'
  sha256 'dc97bebc453a9f79589ae8f1e8eae46596c659fc8f5d4d11c0f85c0b307246d4'

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
