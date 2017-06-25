cask 'corelocationcli' do
  version '3.0.1'
  sha256 '1a8efdcd6d451f0d751805bf295e1a13c7de817adf7ff71e3ba3c053b109b809'

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  appcast 'https://github.com/fulldecent/corelocationcli/releases.atom',
          checkpoint: '65e6d799fcdc80d57b426855653aaaa5bbc03efdad5f578a550c5a98ca876eee'
  name 'Core Location CLI'
  homepage 'https://github.com/fulldecent/corelocationcli'

  binary 'CoreLocationCLI'
end
