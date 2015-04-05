cask :v1 => 'mps' do
  version '3.2'
  sha256 '1e015f575ad740a0f5849e2d511ac8e82a1656ceeded5b06cb2b7f3fb542b3ca'

  url "http://download-cf.jetbrains.com/mps/#{version.tr('.','')}/MPS-#{version}-macos.dmg"
  name 'MPS'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps'
  license :apache

  app "MPS #{version}.app"
end
