cask 'browserstacklocal' do
  version :latest
  sha256 :no_check

  url 'https://www.browserstack.com/browserstack-local/BrowserStackLocal-darwin-x64.zip'
  name 'BrowserStack Local'
  homepage 'https://www.browserstack.com/'

  binary 'BrowserStackLocal'
end
