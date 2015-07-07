cask :v1 => 'cartao-de-cidadao' do
  version '1.26.2-1389'
  sha256 '28b2adf148451590dc73c991251798f3676ae784b176651f4f911ecf46a61e4f'

  url "https://www.cartaodecidadao.pt/ccsoftware/Cartao_de_Cidadao_#{version}_LION_MOUNTAIN_LION_MAVERICKS.dmg"
  name 'Cartão de Cidadão'
  homepage 'https://www.cartaodecidadao.pt/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Cartao_de_Cidadao.pkg'

  uninstall :script => '/usr/local/bin/pteid_uninstall.sh'
end
