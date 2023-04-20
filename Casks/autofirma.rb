cask "autofirma" do
  arch arm: "M1", intel: "x64"
  pkg_arch = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "810533e5c95bc41dff6cd674d09170054bf202c4305d40b62559d0e8bf442321",
         intel: "6e25a93e57b8d00f453822dfed2e6f110a47a18d6e2583fc050c7caae11088f4"

  url "https://estaticos.redsara.es/comunes/autofirma/#{version.major}/#{version.minor}/#{version.patch}/AutoFirma_Mac_#{arch}.zip",
      verified: "estaticos.redsara.es/comunes/autofirma/"
  name "AutoFirma"
  desc "Digital signature editor and validator"
  homepage "https://firmaelectronica.gob.es/Home/Descargas.htm"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "AutoFirma_#{version.major}_#{version.minor}_#{pkg_arch}_signed.pkg"

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
