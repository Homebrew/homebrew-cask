cask 'streamtools' do
  version '0.2.8'
  sha256 '5ca21f4c4c2091c96c508bb277cb5c022f18a8cd3c53abb1ceb11ca0f6454309'

  # github.com/nytlabs/streamtools was verified as official when first introduced to the cask
  url "https://github.com/nytlabs/streamtools/releases/download/#{version}/st_darwin_amd64-#{version}.tar.gz"
  appcast 'https://github.com/nytlabs/streamtools/releases.atom',
          checkpoint: 'd0acf4bf79d2e34d5a936addc9f9bae47a9512337cf76a0eb81dadb55be4d686'
  name 'streamtools'
  homepage 'http://nytlabs.com/streamtools/'

  binary "st_darwin_amd64-#{version}/st"
end
