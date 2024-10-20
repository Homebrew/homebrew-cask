cask "irpf2024" do
  version "1.5"
  sha256 "b916e337ad1efa72aa3979d7b217d569b8d484bd1cc5461e2c59fd61a31fb3f2"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2024/irpf/arquivos/IRPF2024-v#{version}.dmg"
  name "IRPF 2024"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2024/irpf/update/latest.xml"
    strategy :xml do |xml|
      xml.elements["//pkgver"]&.text&.strip
    end
  end

  depends_on macos: ">= :sierra"

  installer manual: "IRPF2024.app"

  uninstall delete: "/Applications/IRPF2024"

  # No zap stanza required
end
