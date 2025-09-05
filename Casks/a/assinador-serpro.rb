cask "assinador-serpro" do
  version "4.3.2"
  sha256 "6ca57788e88cefc6b098a4fd7f7088c27c3dfa226368da43689a7261ee81c2b2"

  url "https://assinadorserpro.estaleiro.serpro.gov.br/downloads/#{version}/AssinadorSerpro-#{version}.mpkg.zip"
  name "Assinador Serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    regex(/Assinador\sSerpro\s(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :sierra"

  pkg "AssinadorSerpro-#{version}.mpkg/Contents/Packages/AssinadorSerpro.pkg"

  uninstall pkgutil: "br.gov.serpro.desktop.assinador"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
