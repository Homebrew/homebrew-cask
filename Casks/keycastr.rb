cask :v1 => 'keycastr' do
  version 'v0.8.4'
  sha256 'e69064710144df338581b19dee12fcb98b47807dd1cc104b3d3007927f978c22'

  url "https://github.com/keycastr/keycastr/releases/download/#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  app 'KeyCastr.app'

  accessibility_access true
end
