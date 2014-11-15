cask :v1 => 'cartao-de-cidadao' do
  version '1.26.0.635'
  sha256 '6333910df54b7e551fa619be1a195695eec08963ef63d6cb73aa8c4e5bff538c'

  url "http://www.cartaodecidadao.pt/ccsoftware/Cartao_de_Cidadao_#{version}_LION_MOUNTAIN_LION_MAVERICKS.dmg"
  homepage 'http://www.cartaodecidadao.pt/'
  license :unknown

  pkg 'Cartao_de_Cidadao.pkg'
  uninstall :script => '/usr/local/bin/pteid_uninstall.sh'
end
