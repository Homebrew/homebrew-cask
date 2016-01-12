cask 'eve' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml',
          :sha256 => '27d2ee414a2155ae538724f43e251515cc0ae1b97662faa4aabbc0f36277fabd'
  name 'EVE'
  homepage 'http://www.hotkey-eve.com/'
  license :gratis

  app 'EVE.app'
end
