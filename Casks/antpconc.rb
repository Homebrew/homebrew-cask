cask :v1 => 'antpconc' do
  version '1.1.0'
  sha256 '3b8f25e876f4c3c6d5e9765b0891a377aae277e1a76adb8183b1ec948a23771c'

  url "http://www.laurenceanthony.net/software/antpconc/releases/AntPConc#{version.delete('.')}/AntPConc.zip"
  name 'AntPConc'
  homepage 'http://www.laurenceanthony.net/software/antpconc'
  license :gratis

  app 'AntPConc.app'
end
