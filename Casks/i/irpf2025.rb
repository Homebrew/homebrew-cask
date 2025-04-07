cask "irpf2025" do
  version "1.2"
  sha256 "9bc13c82d45f12e2e3852f357985db79db207c49d05872b6882eaf2759a3f14e"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2025/irpf/arquivos/IRPF2025-v#{version}.dmg"
  name "IRPF 2025"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2025/irpf/update/latest.xml"
    strategy :xml do |xml|
      xml.elements["//pkgver"]&.text&.strip
    end
  end

  depends_on macos: ">= :sierra"

  installer manual: "IRPF2025.app"

  uninstall delete: "/Applications/IRPF2025"

  # No zap stanza required
end
