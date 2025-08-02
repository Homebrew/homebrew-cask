cask "autofirma" do
  arch arm: "M1", intel: "x64"
  pkg_arch = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.9"
  sha256 arm:   "8684c89024711d3a29745738f2e67e85f3d7d22fd3d80ddfb1acf4137f97d455",
         intel: "06bd9980f86c0e45a54474c827e87747d4a84f9b4df608460b10bfa0eee524ff"

  url "https://firmaelectronica.gob.es/content/dam/firmaelectronica/descargas-software/autofirma#{version.no_dots}/Autofirma_Mac_#{arch}.zip"
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

  # See https://github.com/Homebrew/homebrew-cask/pull/116137#issuecomment-998220031
  installer manual: "AutoFirma_#{version.dots_to_underscores}_#{pkg_arch}.pkg"

  # remove 'Autofirma ROOT' and '127.0.0.1' certificates from keychain (these were installed by pkg)
  uninstall_postflight do
    ["AutoFirma ROOT", "127.0.0.1"].each do |cert_name|
      stdout, * = system_command "/usr/bin/security",
                                 args: ["find-certificate", "-a", "-c", cert_name, "-Z"],
                                 sudo: true
      hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
      hashes.each do |h|
        system_command "/usr/bin/security",
                       args: ["delete-certificate", "-Z", h],
                       sudo: true
      end
    end
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
