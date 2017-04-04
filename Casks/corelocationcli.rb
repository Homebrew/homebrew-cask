cask 'corelocationcli' do
  version '2.2.0'
  sha256 'fb59410ee9182c2616303c21f19c783a8afe852b16170dfe3894b0c461bf541e'

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  appcast 'https://github.com/fulldecent/corelocationcli/releases.atom',
          checkpoint: 'c31d218a45a4f8e685e573c441ac72aa5c53f68e9966736e95f4f3aab51b927d'
  name 'Core Location CLI'
  homepage 'https://github.com/fulldecent/corelocationcli'

  binary 'CoreLocationCLI'
end
