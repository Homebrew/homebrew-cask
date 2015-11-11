cask :v1 => 'keycastr' do
  version 'v0.9.0'
  sha256 '001607825b0e2115591b6f40b5700649cc33bfda6a077c4b88ef088a7c0d9546'

  url "https://github.com/keycastr/keycastr/releases/download/#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  app 'KeyCastr.app'

  accessibility_access true
end
