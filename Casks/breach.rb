cask :v1 => 'breach' do
  version '0.3.22-alpha.6'
  sha256 '5f9cd82b3a6e510b8876d3fe16c64dfbc748041a1610710055a4d608169b2a35'

  # githubusercontent.com is the official download host per the vendor homepage
  url "https://raw.githubusercontent.com/breach/releases/master/v#{version}/breach-v#{version}-darwin-ia32.tar.gz"
  appcast 'https://raw.githubusercontent.com/breach/releases/master.atom'
  name 'Breach'
  homepage 'http://breach.cc'
  license :mit

  app "breach-v#{version}-darwin-ia32/Breach.app"
end
