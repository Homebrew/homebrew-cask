cask 'keycastr' do
  version '0.9.3'
  sha256 '39ab0d77eb22bf62a473f17eaad077fa15ca25d7a0febb7de031dfc1145bd7db'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          checkpoint: '3faa2926353705ebb671d2920c782c287f902d566af93f3ba54b8b71220de7d2'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  accessibility_access true

  app 'KeyCastr.app'
end
