cask :v1 => 'outwit-hub' do
  version :latest
  sha256 :no_check

  url 'https://www.outwit.com/downloads/release/outwit-hub.en-US.mac64.dmg'
  homepage 'http://www.outwit.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Outwit Hub.app'
end
