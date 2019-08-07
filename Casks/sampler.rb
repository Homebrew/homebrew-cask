cask 'sampler' do
  version '1.0.2'
  sha256 '04202bba199f34974f20fa291a87ca04b84ff022c3733820432913fd3db68b87'

  # github.com/sqshq/sampler was verified as official when first introduced to the cask
  url "https://github.com/sqshq/sampler/releases/download/v#{version}/sampler-#{version}-darwin-amd64"
  appcast 'https://github.com/sqshq/sampler/releases.atom'
  name 'sampler'
  homepage 'https://sampler.dev/'

  binary "sampler-#{version}-darwin-amd64", target: 'sampler'
end
