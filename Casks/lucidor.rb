cask :v1 => 'lucidor' do
  version '0.9.8-1'
  sha256 'b94cca22b82ba508a8a9bd5ced62ec3ff093e74c1bf2841a0962c3bba1306a8d'

  url "http://lucidor.org/lucidor/lucidor-#{version}.dmg"
  homepage 'http://lucidor.org'
  license :unknown    # todo: improve this machine-generated value

  app 'Lucidor.app'
end
