cask "irpf2021" do
  version "1.8"
  sha256 "2dab11d1547eea4a00e6330e5eeef58a560d71550adccc15c34cddde9e7e6991"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2021/irpf/arquivos/IRPF2021-v#{version}.pkg"
  name "IRPF 2021"
  desc "Declare last year income for Brazilian's Federal Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/assuntos/meu-imposto-de-renda"

  livecheck do
    url "http://downloadirpf.receita.fazenda.gov.br/irpf/2021/irpf/update/latest.xml"
    regex(%r{<pkgver>(\d+(\.\d+)+)</pkgver>}i)
  end

  depends_on macos: ">= :sierra"

  pkg "IRPF2021-v#{version}.pkg"

  uninstall pkgutil: "br.gov.economia.receita.IRPF2021",
            delete:  "/Library/Application Support/IRPF2021"
end
