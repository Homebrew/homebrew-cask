cask 'stretchly' do
  version '0.2.1'
  sha256 'f8b0d739862f4b087a00cd2bb60de63083a82fdf9b13c6e475d13f35e43219e2'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '398421aca0d3c9ccc31d1b19e8822b5c7e1a2e7e779411ce3e97b52c481017ff'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly'

  app 'stretchly.app'
end
