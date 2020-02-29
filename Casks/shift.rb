cask 'shift' do
  version '4.0.19'
  sha256 '451e4063d6f2be116a789fb53cc71c6447cfd5817174aa5151ed732b17283e02'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
