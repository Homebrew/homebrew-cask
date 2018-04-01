cask 'iffmpeg' do
  version '6.7.0'
  sha256 '9de2dd1d0b06f6f93b14c6c6d8cd1153465bad8d5da9d887520bdfab0c6b2a24'

  url "http://www.iffmpeg.com/iFFmpeg#{version.no_dots}.dmg"
  appcast 'http://www.iffmpeg.com/download.html',
          checkpoint: '2f030e6e89b2aead00fc2c20cc82334d9785baeb32e78b794db684c61b7af258'
  name 'iFFmpeg'
  homepage 'http://www.iffmpeg.com/'

  app 'iFFmpeg.app'
end
