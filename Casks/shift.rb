cask 'shift' do
  version '4.0.24'
  sha256 'ce0a41cb9df7f9ef4f75c6e0cc47328c330951a30904ee993e54d2b10f4a96e8'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
