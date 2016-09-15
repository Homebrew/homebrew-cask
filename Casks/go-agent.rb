cask 'go-agent' do
  version '16.9.0-4001'
  sha256 '66937fe99e0aa55304f06b4f138442e3d768a77f37f199a6478f9026f40c096d'

  url "https://download.go.cd/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  name 'Go Agent'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Agent.app'
end
