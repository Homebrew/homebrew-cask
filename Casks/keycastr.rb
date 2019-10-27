cask 'keycastr' do
  version '0.9.8'
  sha256 'd21f944e45dfe8e5cc2f8d60f45c97b93be0583ecd9e0145689d3fa2bcd231e6'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  app 'KeyCastr.app'
end
