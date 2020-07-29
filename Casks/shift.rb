cask 'shift' do
  version '5.0.65'
  sha256 '456837d6a0041d09a6c67bf4dc8d953de019a83091f87d62bc218dc3366c798e'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
