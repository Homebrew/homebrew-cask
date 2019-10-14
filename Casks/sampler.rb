cask 'sampler' do
  version '1.0.3'
  sha256 'b76c1e1154d458ba43af06b380b38a85051a74cde2691bbc05c3405148f5c7ac'

  # github.com/sqshq/sampler was verified as official when first introduced to the cask
  url "https://github.com/sqshq/sampler/releases/download/v#{version}/sampler-#{version}-darwin-amd64"
  appcast 'https://github.com/sqshq/sampler/releases.atom'
  name 'sampler'
  homepage 'https://sampler.dev/'

  binary "sampler-#{version}-darwin-amd64", target: 'sampler'
end
