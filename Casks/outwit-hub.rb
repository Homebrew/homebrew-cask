cask :v1 => 'outwit-hub' do
  version :latest
  sha256 :no_check

  url 'https://www.outwit.com/downloads/release/outwit-hub.en-US.mac64.dmg'
  homepage 'http://www.outwit.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Outwit Hub.app'
end
