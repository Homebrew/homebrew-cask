cask "assinador-serpro" do
  version "3.0.2"
  sha256 "c043ef01b9bbbad0ac31b74f54ca29ff659e4340faaa0b996bb895bfcc4f0f88"

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
