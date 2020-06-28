cask 'shift' do
  version '5.0.70'
  sha256 'c402c88d2cff84401c39ea43a5cf060dc263c66c987344452497088484ecf56e'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
