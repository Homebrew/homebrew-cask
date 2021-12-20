cask "autofirma" do
  version "1.6.5"
  sha256 "4564893f65a1566ea82c131a63bb56b44dbd2bcc218b5ba501ebb6dc22634c79"

  url "https://estaticos.redsara.es/comunes/autofirma/#{version.major}/#{version.minor}/#{version.patch}/AutoFirma_Mac.zip",
      verified: "estaticos.redsara.es/comunes/autofirma/"
  name "AutoFirma"
  desc "Add a digital signature to documents"
  homepage "https://firmaelectronica.gob.es/Home/Descargas.htm"

  pkg "AutoFirma_#{version.dots_to_underscores}.pkg"

  # remove 'Autofirma ROOT' and '127.0.0.1' certificates from keychain (these were installed by pkg)
  uninstall_postflight do
    system_command "/usr/bin/security",
                   args: [
                     "delete-certificate",
                     "-c", "AutoFirma ROOT"
                   ],
                   sudo: true

    system_command "/usr/bin/security",
                   args: [
                     "delete-certificate",
                     "-c", "127.0.0.1"
                   ],
                   sudo: true
  end

  uninstall pkgutil: "es.gob.afirma",
            delete:  "/Applications/AutoFirma.app"
end
