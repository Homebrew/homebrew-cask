cask :v1 => 'piglet' do
  version '0.2.0'
  sha256 '3615fddc93bc0b902033ca62c04fc5f529c39e3c3f24c84cd501ff0012986532'

  url "https://github.com/jenslind/piglet/releases/download/v#{version}/Piglet-#{version.gsub(/\./, '-')}.zip"
  appcast 'https://github.com/jenslind/piglet/releases.atom'
  name 'Piglet'
  homepage 'https://github.com/jenslind/piglet'
  license :mit

  app 'Piglet.app'
end
