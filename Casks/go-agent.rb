cask 'go-agent' do
  version '16.10.0-4131'
  sha256 '401a4757ba7caaf5bdbaac1ca5e5e1f7af6674dc15b586ee90f932d1eb7a63c4'

  url "https://download.go.cd/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  name 'Go Agent'
  homepage 'https://www.go.cd/'

  app 'Go Agent.app'
end
