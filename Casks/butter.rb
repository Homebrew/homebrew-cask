cask :v1 => 'butter' do
  version '0.2.0'
  sha256 '3bcec1396c944bb10d84db1354cd214a2e7f398c746d535ffb0ca503fd0ba686'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast 'https://github.com/harukasan/butter/releases.atom'
  name 'Butter'
  homepage 'https://github.com/harukasan/butter'
  license :mit

  app 'Butter.app'
end
