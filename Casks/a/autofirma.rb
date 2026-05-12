cask "autofirma" do
  arch arm: "M1", intel: "x64"
  pkg_arch = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "c189636cd52f84c4206ea7f265d2a859cc2f2c54513d0f1f81634846ac7a7b60",
         intel: "38f1e0df1f41b034cae30df9b19b2d93282f138d80b768ba21f7d23a0fcd854b"

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
