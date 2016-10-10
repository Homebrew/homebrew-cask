cask 'moeditor' do
  version '0.1.1'
  sha256 '45dc7ac40675fa8c3c2170801450740701599f7a162a696c21f38bff4f04fc50'

  url "https://github.com/Moeditor/Moeditor/releases/download/v#{version}-beta/Moeditor-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Moeditor/Moeditor/releases.atom',
          checkpoint: '3a0247fa7c01e7026c2fcf2d02cfc0ea4f2d073c4c39d2c0797f65ba919d41e1'
  name 'Moeditor'
  homepage 'https://github.com/Moeditor/Moeditor'

  app 'Moeditor.app'
end
