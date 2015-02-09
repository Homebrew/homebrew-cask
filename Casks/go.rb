cask :v1 => 'go' do
  version '1.4.1'

  if MacOS.release <= 10.6
    sha256 'e994b4937e6751bf2a458f4e87fdf49687ceb0cb8a40b59a6b6ac7544a52b65e'
    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64-osx10.6.pkg"
    pkg "go#{version}.darwin-amd64-osx10.6.pkg"
  else
    sha256 'a3fd43435b77af2e1a5bf79d8985347ff45c543d6a2bf794ae39a503dd32c659'
    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64-osx10.8.pkg"
    pkg "go#{version}.darwin-amd64-osx10.8.pkg"
  end

  name 'Go'
  homepage 'https://golang.org/'
  license :bsd

  depends_on :macos => '>= 10.6'

  uninstall :pkgutil => 'com.googlecode.go'
end
