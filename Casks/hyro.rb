cask :v1 => 'hyro' do
  version '0.0.3'
  sha256 '2a1fed542c0e9ecc148ac0e7241adf774762f06fc6bfbbf8b2e96437a4c915f7'

  url "https://jawerty.github.io/Hyro/apps/Hyro-#{version}.dmg"
  homepage 'http://jawerty.github.io/Hyro/'
  license :oss

  app 'Hyro.app'
end
