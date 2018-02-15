cask 'antconc' do
  if MacOS.version <= :snow_leopard
    version '3.4.1'
    sha256 '03c353c059b8c0762b01d9be83f435321f5396cbf203bd8b36c6a56682b6a240'
  else
    version '3.5.2'
    sha256 'a7dcdd2473d6e07f3e8afffd9630a4232abcafac4ceef46b8f1a479aeabbec73'
  end

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antconc/releases/',
          checkpoint: '681d8baa01f5f99650baa9f64cb3ff496bce13bdb346c237441f207a02d7fd17'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
