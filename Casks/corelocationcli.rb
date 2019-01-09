cask 'corelocationcli' do
  version '3.0.1'
  sha256 '1a8efdcd6d451f0d751805bf295e1a13c7de817adf7ff71e3ba3c053b109b809'

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  appcast 'https://github.com/fulldecent/corelocationcli/releases.atom'
  name 'Core Location CLI'
  homepage 'https://github.com/fulldecent/corelocationcli'

  binary 'CoreLocationCLI'
end
