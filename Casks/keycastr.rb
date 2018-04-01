cask 'keycastr' do
  version '0.9.5'
  sha256 '42014ded107d922c7374fb2bb897ca34533ea246ac5643555b25136ab8768e69'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          checkpoint: '909822e4182c11b8f7e4c2e3de7c3e997edb57b39a3bdc9a9b72c5b31a7d8717'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  accessibility_access true

  app 'KeyCastr.app'
end
