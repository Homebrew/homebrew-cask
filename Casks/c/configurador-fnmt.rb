cask "configurador-fnmt" do
  version "5.1.1"
  sha256 "004ff8daa0f812728942df21ccbf835f0ea4bad35ba4bc1d02e28359de7c9391"

  url "https://descargas.cert.fnmt.es/Mac/InstaladorConfiguradorFnmt_#{version}.pkg",
      verified: "cert.fnmt.es/"
  name "Configurador FNMT"
  desc "Key generation and certificate request tool for FNMT digital certificates"
  homepage "https://www.sede.fnmt.gob.es/certificados/persona-fisica/obtener-certificado-software/configuracion-previa"

  livecheck do
    url "https://www.sede.fnmt.gob.es/certificados/persona-fisica/obtener-certificado-software/configuracion-previa"
    regex(/InstaladorConfiguradorFnmt[._-](\d+(?:\.\d+)+)\.pkg/i)
    strategy :page_match
  end

  pkg "InstaladorConfiguradorFnmt_#{version}.pkg"

  uninstall pkgutil: "es.gob.fnmt.cert.certrerquest",
            quit:    "es.gob.fnmt.cert.certrerquest"

  zap trash: [
    "~/Library/Application Support/Configurador FNMT",
    "~/Library/Caches/es.gob.fnmt.cert.certrerquest",
    "~/Library/Preferences/es.gob.fnmt.cert.certrerquest.plist",
  ]
end
