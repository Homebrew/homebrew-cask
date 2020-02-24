cask 'corelocationcli' do
  version '3.1.0'
  sha256 '2849ad3d45ba836e49ce2d46ebe21a6d587c16bdd2c48d978bf8dc8494c9f26e'

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  appcast 'https://github.com/fulldecent/corelocationcli/releases.atom'
  name 'Core Location CLI'
  homepage 'https://github.com/fulldecent/corelocationcli'

  binary 'CoreLocationCLI'
end
