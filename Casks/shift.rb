cask 'shift' do
  version '4.0.21'
  sha256 'aa92f2ed2a3eff3e6a356493c70754e7dfcaa3010318e5f004712a7d1374a6ff'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
