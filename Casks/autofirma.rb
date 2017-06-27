cask 'autofirma' do
  version :latest
  sha256 :no_check

  # estaticos.redsara.es/comunes/autofirma was verified as official when first introduced to the cask
  url 'https://estaticos.redsara.es/comunes/autofirma/currentversion/AutoFirma_Mac.zip'
  name 'AutoFirma'
  homepage 'https://administracionelectronica.gob.es/ctt/clienteafirma'

  pkg 'AutoFirma_1_5_signed.pkg'

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

  uninstall pkgutil: 'es.gob.afirma'
end
