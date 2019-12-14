cask 'shift' do
  version '4.0.6'
  sha256 '32b6a5875f784826d800b0b93dc5a3024cfa5f105085842aff02eeb8e85d2846'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
