cask 'stretchly' do
  version '0.3.0'
  sha256 '331dd1c3c1b41dbfe48b8786e3d434cfccc2e199dcce04c43c698a2dc350676f'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: 'af574f5126d75c782f81316ae110a3b76bb390f2c46dd90eb91b930d76c90f7e'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly'

  app 'stretchly.app'
end
