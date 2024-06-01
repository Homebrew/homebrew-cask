cask "irpf2024" do
  version "1.2"
  sha256 "78196b5315be4a1e0232c4c3758dc93e5d1eba9378cd5552405b3e01b0f54d43"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2024/irpf/arquivos/IRPF2024-v#{version}.dmg"
  name "IRPF 2024"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2024/irpf/update/latest.xml"
    regex(%r{<pkgver>(\d+(\.\d+)+)</pkgver>}i)
  end

  depends_on macos: ">= :sierra"

  installer manual: "IRPF2024.app"

  uninstall delete: "/Applications/IRPF2024"

  # No zap stanza required
end
