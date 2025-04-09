cask "irpf2023" do
  version "1.8"
  sha256 "2cd503c2cbaeb680b4d46d3adb01341cace375839537387df1e50949cd5b229f"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2023/irpf/arquivos/IRPF2023-v#{version}.dmg"
  name "IRPF 2023"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2023/irpf/update/latest.xml"
    strategy :xml do |xml|
      xml.elements["//pkgver"]&.text&.strip
    end
  end

  depends_on macos: ">= :sierra"

  installer manual: "IRPF2023.app"

  uninstall delete: "#{appdir}/IRPF2023"

  # No zap stanza required

  caveats <<~EOS
    IRPF2023 will store data in ~/Documents/ProgramasRFB/IRPF2023.
    You might want to delete this directory after you finish your tax report.
  EOS
end
