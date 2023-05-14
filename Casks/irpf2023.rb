cask "irpf2023" do
  version "1.3"
  sha256 "bb3015e0b35375545cbbc821dfb857cb35cf47ef3fb0f00e6bde71ec1d368bbd"

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
    IRPF2023 will store data in ~/Documents/ProgramasRFB/IRPF2023.
    You might want to delete this directory after you finish your tax report.
  EOS
end
