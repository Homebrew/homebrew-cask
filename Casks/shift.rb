cask 'shift' do
  version '4.0.11'
  sha256 'dcc445e28b9503f8ef6a364535ff04a9ac875433d62c3594bb80465d8844ab7b'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
