cask "irpf2023" do
  version "1.2"
  sha256 "a8f940ac71463dff410f89fd9cbfb9a5a61201082a753416ad2a9d36f03d70c8"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2023/irpf/arquivos/IRPF2023-v#{version}.dmg"
  name "IRPF 2023"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2023/irpf/update/latest.xml"
    regex(%r{<pkgver>(\d+(\.\d+)+)</pkgver>}i)
  end

  depends_on macos: ">= :sierra"

  installer manual: "IRPF2023.app"

  uninstall delete: "/Applications/IRPF2023"

  # No zap stanza required

  caveats <<~EOS
    IRPF2023 will store data in #{Dir.home}/Documents/ProgramasRFB/IRPF2023.
    You might want to delete this directory after you finish your tax report.
  EOS
end
