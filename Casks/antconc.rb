cask 'antconc' do
  version '3.5.2'
  sha256 'a7dcdd2473d6e07f3e8afffd9630a4232abcafac4ceef46b8f1a479aeabbec73'

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antconc/releases/',
          checkpoint: '681d8baa01f5f99650baa9f64cb3ff496bce13bdb346c237441f207a02d7fd17'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
