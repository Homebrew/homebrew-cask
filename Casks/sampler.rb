cask 'sampler' do
  version '1.0.0'
  sha256 'b03865cea6614f96a0d3a0599fa6f8472f2293c4958b646db61a9d28f3c54829'

  # github.com/sqshq/sampler was verified as official when first introduced to the cask
  url "https://github.com/sqshq/sampler/releases/download/v#{version}/sampler-#{version}-darwin-amd64"
  appcast 'https://github.com/sqshq/sampler/releases.atom'
  name 'sampler'
  homepage 'https://sampler.dev/'

  binary "sampler-#{version}-darwin-amd64", target: 'sampler'
end
