cask "assinador-serpro" do
  version "3.0.1"
  sha256 "ec1ffcb42fefd8419a1c9fc0f7e880d2cb44c469fc6ef3dfcf6795b8a7a97201"

  url "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro/arquivos/assinador-serpro-#{version.dots_to_hyphens}-instalador.dmg"
  name "Assinador Serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    regex(/Assinador\sSerpro\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "Assinador Serpro.app"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
