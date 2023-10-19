cask "assinador-serpro" do
  version "4.2.0"
  sha256 "b7cada9314d6224793010599ae859d7ea26c6ea64aa100b0db848f0a7397e2ab"

  url "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro/arquivos/assinadorserpro-#{version.dots_to_hyphens}-mpkg.zip"
  name "Assinador Serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    regex(/Assinador\sSerpro\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  pkg "AssinadorSerpro-#{version}.mpkg/Contents/Packages/AssinadorSerpro.pkg"

  uninstall pkgutil: "br.gov.serpro.desktop.assinador"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
