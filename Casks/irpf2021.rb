cask "irpf2021" do
  version "1.9"
  sha256 "4734a380c50e53d5f1e273b85dec78f67c8aa285d786e39c722657e7a82f54b8"

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
