cask "autofirma" do
  arch arm: "M1", intel: "x64"
  pkg_arch = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "858aa128f2cd2d5e7cf294129193cedb7da4839ba5157deff4b01c9780ad301a",
         intel: "ce7c83c9b12cc6fc4a1d9f725ef104c56d32623e8ab04f53c6a778166614a153"

  url "https://firmaelectronica.gob.es/content/dam/firmaelectronica/descargas-software/Autofirma_#{version.dots_to_underscores}_Mac_#{arch}.zip"
  name "AutoFirma"
  desc "Digital signature editor and validator"
  homepage "https://firmaelectronica.gob.es/ciudadanos/descargas"

  livecheck do
    url :homepage
    regex(/Versión\s+v?(\d+(?:\.\d+)+)\s+para\s+MacOS\s+procesadores\s+#{arch}/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on :macos

  # See https://github.com/Homebrew/homebrew-cask/pull/116137#issuecomment-998220031
  installer manual: "AutoFirma_#{version.dots_to_underscores}_#{pkg_arch}_signed.pkg"

  # remove 'Autofirma ROOT' and '127.0.0.1' certificates from keychain (these were installed by pkg)
  uninstall_postflight_steps do
    delete_keychain_certificates "AutoFirma ROOT"
    delete_keychain_certificates "127.0.0.1"
  end

  uninstall quit:    "es.gob.afirma",
            pkgutil: "es.gob.afirma",
            delete:  "/Applications/AutoFirma.app"

  zap trash: [
    "~/.afirma",
    "~/Library/Application Support/AutoFirma",
    "~/Library/Preferences/es.gob.afirma.plist",
  ]
end
