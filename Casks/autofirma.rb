cask 'autofirma' do
  version '1.5'
  sha256 'c39ad866df3e655a3bff390ae98a768af1c26d51bffef2fd92a507335d1c98c4'

  # estaticos.redsara.es/comunes/autofirma was verified as official when first introduced to the cask
  url 'https://estaticos.redsara.es/comunes/autofirma/currentversion/AutoFirma_Mac.zip'
  name 'AutoFirma'
  homepage 'https://administracionelectronica.gob.es/ctt/clienteafirma'

  pkg "AutoFirma_#{version.dots_to_underscores}_signed.pkg"

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
