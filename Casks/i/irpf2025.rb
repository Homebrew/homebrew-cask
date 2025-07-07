cask "irpf2025" do
  version "1.5"
  sha256 "750a60573c6364817ee72c160672ed9fb1a1e77c299d81ca13a8f2f54f218666"

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

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :sierra"

  installer manual: "IRPF2025.app"

  uninstall delete: "/Applications/IRPF2025"

  # No zap stanza required
end
