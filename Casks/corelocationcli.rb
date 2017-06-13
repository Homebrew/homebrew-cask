cask 'corelocationcli' do
  version '2.2.0'
  sha256 'fb59410ee9182c2616303c21f19c783a8afe852b16170dfe3894b0c461bf541e'

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  appcast 'https://github.com/fulldecent/corelocationcli/releases.atom',
          checkpoint: '1d7c93f8ee6d06431a759358e4be2ff1578003d9e5eaa7d6f0845af773feb7ac'
  name 'Core Location CLI'
  homepage 'https://github.com/fulldecent/corelocationcli'

  binary 'CoreLocationCLI'
end
