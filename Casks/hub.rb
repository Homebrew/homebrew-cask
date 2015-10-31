cask :v1 => 'hub' do
  version '2.2.2'
  sha256 '570664fdb22c5c40b16f0d17eb33d881332601ac289f724fe3aceab0c610a2a6'

  url "https://github.com/github/hub/releases/download/v#{version}/hub-darwin-amd64-#{version}.tgz"
  appcast 'https://github.com/github/hub/releases.atom'
  name 'hub'
  homepage 'https://github.com/github/hub'
  license :mit

  binary "hub-darwin-amd64-#{version}/bin/hub"
end
