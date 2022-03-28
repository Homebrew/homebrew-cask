cask "irpf2022" do
  version "1.2"
  sha256 "fc78a71318680e419426f1eddf983e2baffe46e9f6fd89af403e35aadcb1cdf6"

  url "https://downloadirpf.receita.fazenda.gov.br/irpf/2022/irpf/arquivos/IRPF2022-v#{version}.pkg"
  name "IRPF 2022"
  desc "Fill your Tax Report (DIRPF) for the Brazilian Revenue Service (RFB)"
  homepage "https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf"

  livecheck do
    url "https://downloadirpf.receita.fazenda.gov.br/irpf/2022/irpf/update/latest.xml"
    regex(%r{<pkgver>(\d+(\.\d+)+)</pkgver>}i)
  end

  depends_on macos: ">= :sierra"

  pkg "IRPF2022-v#{version}.pkg"

  uninstall pkgutil: "br.gov.economia.receita.IRPF2022",
            delete:  "/Library/Application Support/IRPF2022"

  caveats <<~EOS
    IRPF2022 will store data in #{ENV["HOME"]}/Documents/ProgramasRFB/IRPF2022.
    You might want to delete this directory after you finish your tax report.
  EOS
end
