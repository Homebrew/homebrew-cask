cask "irpf2025" do
  version "1.4"
  sha256 "70b5984f72bca738fe78d0626555886dcfc6ff399038bb0837398c4dc1ffe2b9"

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
