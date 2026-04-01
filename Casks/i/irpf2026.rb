cask "irpf2026" do
  version "1.0"
  sha256 "7871009285ed63d191e6ebca075daf521b002136dedfde54b1e4383d42b8635a"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2026/irpf/arquivos/IRPF2026-v#{version}.dmg"
  name "IRPF 2026"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2026/irpf/update/latest.xml"
    strategy :xml do |xml|
      xml.elements["//pkgver"]&.text&.strip
    end
  end

  installer manual: "IRPF2026.app"

  uninstall delete: "/Applications/IRPF2026"

  # No zap stanza required
end