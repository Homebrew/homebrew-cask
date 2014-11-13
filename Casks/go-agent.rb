cask :v1 => 'go-agent' do
  version '14.2.0-377'
  sha256 'b3886afe748bbba3dccd0f3282af4e1860ca93223a5a70bf22a3b132adeb3701'

  url "http://download.go.cd/gocd/go-agent-#{version}-osx.zip"
  homepage 'http://www.go.cd'
  license :unknown

  app 'Go Agent.app'
end
