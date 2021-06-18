cask "irpf2021" do
  version "1.7"
  sha256 "5b9ee4f762392315bda348b468ff82b9ae1428762782fb35ae846f8c59baa537"

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
