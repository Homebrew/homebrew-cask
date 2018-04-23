cask 'keycastr' do
  version '0.9.6'
  sha256 '1d4c3c0ab46a7573d0372958ef5f210a1d69616acaa6fba3c00ebd6c044c0e5b'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          checkpoint: 'bf24df96cbb77a1f7467b2d722a62ec28d87397b280005cd77df8c43d2ba57aa'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  accessibility_access true

  app 'KeyCastr.app'
end
