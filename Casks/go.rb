cask :v1 => 'go' do
  version '1.5'

  sha256 '26891fed36b7fb4a0c8ce069d8adcb3120bc44fc28c91d1e43bc0d4b8b64dfcf'
  url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64.pkg"
  pkg "go#{version}.darwin-amd64.pkg"

  name 'Go'
  homepage 'https://golang.org/'
  license :bsd

  depends_on :macos => '>= :mountain_lion'

  uninstall :pkgutil => 'com.googlecode.go'
end
