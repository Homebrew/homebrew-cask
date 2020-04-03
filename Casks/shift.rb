cask 'shift' do
  version '4.0.22'
  sha256 '85457183bf5300484fc8f892cd068264b7ec518ec3357ddb6114edacdeb1ae48'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
