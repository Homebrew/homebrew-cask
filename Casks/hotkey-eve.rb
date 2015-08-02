cask :v1 => 'hotkey-eve' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  name 'EVE'
  homepage 'http://www.hotkey-eve.com/'
  license :freemium

  app 'EVE.app'
end
