cask :v1 => 'electrum' do
  version '2.1'
  sha256 '76076e4f422c4ee6b8d58534c6529e957361e11471dfae9217b3b94f38b893bc'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
