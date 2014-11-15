cask :v1 => 'browserstacklocal' do
  version :latest
  sha256 :no_check

  url 'https://www.browserstack.com/browserstack-local/BrowserStackLocal-darwin-x64.zip'
  homepage 'http://www.browserstack.com/'
  license :commercial

  binary 'BrowserStackLocal'
end
