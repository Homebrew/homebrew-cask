cask 'antpconc' do
  version '1.1.0'
  sha256 '3b8f25e876f4c3c6d5e9765b0891a377aae277e1a76adb8183b1ec948a23771c'

  url "http://www.laurenceanthony.net/software/antpconc/releases/AntPConc#{version.no_dots}/AntPConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antpconc/releases/',
          checkpoint: '0129809d06241c8972b6741beb652af0a8fc26c8b316fa54ecc45369428a9774'
  name 'AntPConc'
  homepage 'http://www.laurenceanthony.net/software/antpconc/'

  app 'AntPConc.app'
end
