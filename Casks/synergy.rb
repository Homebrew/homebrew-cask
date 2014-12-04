cask :v1 => 'synergy' do
  version '1.6.2-master-ebba77f'
  sha256 '259dd8367e0d9b6152e93d50854687d54714f649b6b018949621ba2194b3f987'

  url "http://synergy-project.org/files/packages/synergy-#{version}-MacOSX1010-x86_64.dmg"
  homepage 'http://synergy-project.org'
  license :oss

  app 'Synergy.app'
end
