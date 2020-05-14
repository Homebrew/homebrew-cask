cask 'shift' do
  version '4.0.29'
  sha256 '1dcad9960fc1e9922952d9985deba34d29d05c64a4b6a4b8362fe30fffd2bba4'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
