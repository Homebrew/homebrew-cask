cask "irpf2022" do
  version "1.3"
  sha256 "7354343e39a30fc753d8e02d93cfbb1edd6e105723da36df8a957a1a62e7a3ed"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2022/irpf/arquivos/IRPF2022-v#{version}.pkg"
  name "IRPF 2022"
  desc "Declare last year income for Brazilian's Federal Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/assuntos/meu-imposto-de-renda"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2022/irpf/update/latest.xml"
    regex(%r{<pkgver>(\d+(\.\d+)+)</pkgver>}i)
  end

  depends_on macos: ">= :sierra"

  pkg "IRPF2022-v#{version}.pkg"

  uninstall pkgutil: "br.gov.economia.receita.IRPF2022",
            delete:  "/Library/Application Support/IRPF2022"
end
