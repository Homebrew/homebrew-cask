cask 'receitanet' do
  version '1.07'
  sha256 '409f74f4cda60739030a19a418ff7534987ace02da1093a5f494b042986dc5a4'

  url "http://downloadirpf.receita.fazenda.gov.br/receitanet/Receitanet-#{version}.app.tar.gz"
  name 'Receitanet'
  homepage 'http://idg.receita.fazenda.gov.br/interface/cidadao/irpf/2016/'

  app 'Receitanet.app'
  installer script: "Receitanet-#{version}.app/Contents/MacOS/installer",
            args:   %W[--response-file response --mode silent --prefix #{staged_path}],
            sudo:   true

  uninstall script: {
                      executable: 'Desinstalador',
                      args:       %w[--mode silent],
                      sudo:       true,
                    }

  caveats do
    depends_on_java('7')
  end
end
