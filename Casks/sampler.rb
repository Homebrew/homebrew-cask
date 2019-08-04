cask 'sampler' do
  version '1.0.1'
  sha256 '7bb4585522bace2646b7f87e8d7b100a2cf5f31bdc5ac23ff54454317d8a64b5'

  # github.com/sqshq/sampler was verified as official when first introduced to the cask
  url "https://github.com/sqshq/sampler/releases/download/v#{version}/sampler-#{version}-darwin-amd64"
  appcast 'https://github.com/sqshq/sampler/releases.atom'
  name 'sampler'
  homepage 'https://sampler.dev/'

  binary "sampler-#{version}-darwin-amd64", target: 'sampler'
end
