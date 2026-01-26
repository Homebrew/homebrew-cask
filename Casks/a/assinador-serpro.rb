cask "assinador-serpro" do
  version "4.3.3"
  sha256 "d577d143e7fd7305e505da856e48cf1eb089b4f94c0af23012b7358cf50b42eb"

  url "https://assinadorserpro.estaleiro.serpro.gov.br/downloads/#{version}/AssinadorSerpro-#{version}.pkg"
  name "Assinador Serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    regex(/href=.*?AssinadorSerpro[._-]v?(\d+(?:\.\d+)+)\.m?pkg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  pkg "AssinadorSerpro-#{version}.pkg"

  uninstall pkgutil: "br.gov.serpro.desktop.assinador"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
