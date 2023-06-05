cask "assinador-serpro" do
  version "4.0.2"
  sha256 "4ed47e37da89b5fe80568d14222407de9711f87d8e6c8a9505b590cd8d69af8a"

  url "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro/arquivos/AssinadorSerpro#{version}.mpkg.zip"
  name "Assinador Serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    regex(/Assinador\sSerpro\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  pkg "AssinadorSerpro-#{version}.mpkg"

  uninstall pkgutil: "br.gov.serpro.desktop.assinador"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
