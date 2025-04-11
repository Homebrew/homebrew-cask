cask "irpf2024" do
  version "1.7"
  sha256 "4835c5de189d255ca302d8f3dce8e34fb5220396bb0acea8ea4b75b8c5e57ad5"

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

  uninstall delete: "#{appdir}/IRPF2024"

  # No zap stanza required
end
