cask 'outwit-hub' do
  version :latest
  sha256 :no_check

  url 'https://www.outwit.com/downloads/release/outwit-hub.en-US.mac64.dmg'
  name 'OutWit Hub'
  homepage 'https://www.outwit.com'
  license :freemium

  app 'Outwit Hub.app'
end
