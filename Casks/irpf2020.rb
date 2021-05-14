cask "irpf2020" do
  version "2.0"
  sha256 "dcaf2938cbf5aa4b29cd4e3620f1ce13c68a38585d626d39c20b08b8dfec89fe"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-v#{version}.dmg"
  name "irpf2020"
  desc "Declare your income for Brazilian's Federal Revenue Service (RFB). Tax year 2019"
  homepage "https://www.gov.br/receitafederal/pt-br/assuntos/meu-imposto-de-renda"

  livecheck do
    url "http://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/update/latest.xml"
    regex(%r{<pkgver>(\d+(\.\d+)+)</pkgver>}i)
  end

  depends_on macos: ">= :sierra"
  depends_on cask: "oracle-jdk"

  app "IRPF2020.app"
end
