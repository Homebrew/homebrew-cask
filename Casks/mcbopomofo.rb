cask :v1 => 'mcbopomofo' do
  version '0.9.6.11'
  sha256 '1c19735b97cf8319dba71a2dce443c332bba137260eab8e57b10baf2e6157f0f'

  url "https://app.openvanilla.org/file/mcbopomofo/McBopomofo-Installer-#{version}.zip"
  homepage 'https://mcbopomofo.openvanilla.org/'
  license :mit

  installer :manual => 'McBopomofoInstaller.app'

  zap :delete => '~/Library/Input Methods/McBopomofo.app'
end
