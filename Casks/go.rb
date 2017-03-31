cask 'go' do
  version '1.8'
  sha256 'f9d511eb88baecf8a2e3457bf85eaae73dfb7cade4dd4eaba744947efea586e1'

  # storage.googleapis.com was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/golang/go1.8.darwin-amd64.pkg'
  name 'Go'
  homepage 'https://golang.org/'

  pkg "go#{version}.darwin-amd64.pkg"
end
