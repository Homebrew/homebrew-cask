cask "irpf2024" do
  version "1.1"
  sha256 "f20c2cd35cffd67d66a58091230f329480cadc4711b4bf561f82c7c3a1a4f481"

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
