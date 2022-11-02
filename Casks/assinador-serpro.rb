cask "assinador-serpro" do
  version "4.0.0"
  sha256 "d343c10e2b5179fafae7cb32893a11dd3bb99b6b1bce2eff83b26fff2965cc74"

  url "https://assinadorserpro.estaleiro.serpro.gov.br/downloads/AssinadorSerpro-#{version}.pkg"
  name "Assinador Serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    regex(/Assinador\sSerpro\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  pkg "AssinadorSerpro-#{version}.pkg"

  uninstall pkgutil: "br.gov.serpro.desktop.assinador"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
