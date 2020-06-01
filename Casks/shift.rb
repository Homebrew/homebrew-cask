cask 'shift' do
  version '4.0.30'
  sha256 'ad351babb8132be6800e6fafe1411f880a94b74c4832215ad4e18aee907b1790'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
