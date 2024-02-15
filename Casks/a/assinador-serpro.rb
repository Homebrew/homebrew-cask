cask "assinador-serpro" do
  version "4.2.1"
  sha256 "e4b787c3075b4612bf25b98289a0ab7527b852fca966800666b3ff9df5598a01"

  url "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro/arquivos/AssinadorSerpro#{version}.mpkg.zip"
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
