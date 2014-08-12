class Browserstacklocal < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.browserstack.com/browserstack-local/BrowserStackLocal-darwin-x64.zip'
  homepage 'http://www.browserstack.com/'

  binary 'BrowserStackLocal'
end
