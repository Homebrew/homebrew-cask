cask "irpf2025" do
  version "1.7"
  sha256 "09a8b8b19e1dd8a078fd3020aa1f06c57f5f9656a00f50d8641c8a386b5a3d15"

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

  installer manual: "IRPF2025.app"

  uninstall delete: "/Applications/IRPF2025"

  # No zap stanza required
end
