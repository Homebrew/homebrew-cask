cask :v1 => 'browserstacklocal' do
  version :latest
  sha256 :no_check

  url 'https://www.browserstack.com/browserstack-local/BrowserStackLocal-darwin-x64.zip'
  name 'BrowserStack'
  name 'BrowserStack Local'
  homepage 'https://www.browserstack.com/'
  license :commercial

  binary 'BrowserStackLocal'
end
