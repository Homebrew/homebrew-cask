cask "assinador-serpro" do
  version "4.2.2"
  sha256 "8be514e7088e83e1de4f1ba02b40f273f61205e5396bcc60b09b4305e815742b"

  url "https://assinadorserpro.estaleiro.serpro.gov.br/downloads/#{version}/AssinadorSerpro-#{version}.mpkg.zip"
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
