cask :v1 => 'go' do
  version '1.4.2'

  if MacOS.release <= :snow_leopard
    sha256 '8b8fe5c723663c2da0381643b2f04b0a597f623149095db61818c3fe22be9582'
    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64-osx10.6.pkg"
    pkg "go#{version}.darwin-amd64-osx10.6.pkg"
  else
    sha256 '0407ca952f48315b3a6de99625c2fbe348c88936754539f4fcb244319e04a6b5'
    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64-osx10.8.pkg"
    pkg "go#{version}.darwin-amd64-osx10.8.pkg"
  end

  name 'Go'
  homepage 'https://golang.org/'
  license :bsd

  depends_on :macos => '>= :snow_leopard'

  uninstall :pkgutil => 'com.googlecode.go'
end
