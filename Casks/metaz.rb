cask :v1 => 'metaz' do
  version '1.0a15'
  sha256 '7dcc71a917bed0d5686884c4ec198275a1f656ce09db71fa49cc73e46933820c'

  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'
  license :mit

  app 'MetaZ.app'
end
