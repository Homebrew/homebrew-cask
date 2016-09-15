cask 'eve' do
  version :latest
  sha256 :no_check

  # amazonaws.com/hotkeyeve was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml',
          checkpoint: '93943cfb0ee6329879ca6aa563be493c2c30a8a461ae839c02de678463e01d53'
  name 'EVE'
  homepage 'http://www.hotkey-eve.com/'
  license :gratis

  app 'EVE.app'
end
