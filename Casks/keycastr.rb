cask :v1 => 'keycastr' do
  version 'v0.8.5'
  sha256 '4a0ba75562608f16be2144efcdb9dfb57fc3470ef0e81df751b80a04dfcd2fb7'

  url "https://github.com/keycastr/keycastr/releases/download/#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  app 'KeyCastr.app'

  accessibility_access true
end
