cask 'fly' do
  version '4.2.2'
  sha256 'b8dacaddea09a58b1594186d3c92fdca3899096fc720fe431b4ca8962bf8a6d9'

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly_darwin_amd64"
  appcast 'https://github.com/concourse/concourse/releases.atom'
  name 'fly'
  homepage 'https://github.com/concourse/fly'

  container type: :naked

  binary 'fly_darwin_amd64', target: 'fly'
end
