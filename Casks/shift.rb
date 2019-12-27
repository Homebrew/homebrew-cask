cask 'shift' do
  version '4.0.10'
  sha256 'bc6bd2eec3bf765f3566617d682622ef0e8de3499ce99220c68bfb28c5672dbd'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
