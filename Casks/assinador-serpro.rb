cask "assinador-serpro" do
  version "3.0.0"
  sha256 "a981db5b5a6a250c24565f031aa58a9fb2723ac4cbfcd3db74dbb7cdd53ca6df"

  url "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro/arquivos/assinador-serpro-#{version.dots_to_hyphens}-instalador.dmg"
  name "assinador-serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Assinador\sSerpro\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "Assinador Serpro.app"

  zap trash: "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist"
end
