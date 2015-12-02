cask :v1 => 'keycastr' do
  version 'v0.9.1'
  sha256 '4edc81d69117d2e6fdbf0f06f8334bc0449ecafc92abd649eb73d526a534cf61'

  url "https://github.com/keycastr/keycastr/releases/download/#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  app 'KeyCastr.app'

  accessibility_access true
end
