cask 'localswitch' do
  version ':latest'
  sha256 '3d4ffe037f62c0aa9f99430ca5ba9eca20f8ee3bf6937e872b83112d8780af07'

  url 'https://github.com/DaFuqtor/LocalSwitch/releases/latest/download/LocalSwitch.zip'
  appcast 'https://github.com/DaFuqtor/LocalSwitch/releases.atom'
  name 'LocalSwitch'
  homepage 'https://github.com/DaFuqtor/LocalSwitch'

  app 'LocalSwitch.app'
end
