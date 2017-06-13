cask 'keycastr' do
  version '0.9.3'
  sha256 '39ab0d77eb22bf62a473f17eaad077fa15ca25d7a0febb7de031dfc1145bd7db'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          checkpoint: '3831a7f4c78c5077f7a926e2fe3559fd73bcc49dbdb847f0e8ad8469578e8755'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  accessibility_access true

  app 'KeyCastr.app'
end
