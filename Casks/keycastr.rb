cask 'keycastr' do
  version '0.9.7'
  sha256 '20f68c2581c6dbfce2f24931c7dc4d85aed0072a138272bbf6565828d6ff753a'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'

  app 'KeyCastr.app'
end
