cask "autofirma" do
  arch arm: "M1", intel: "x64"
  pkg_arch = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "8b202ccd48a513fe14dae6be2a21fbe42a65f90a7865ef22e8516df6425efe71",
         intel: "62f1cc2f4c9528b690b2e736eeb5b74296cd6d4f5919f1262c69e1e811542d5b"

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
