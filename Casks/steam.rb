cask :v1 => 'steam' do
  version :latest
  sha256 :no_check

  url 'http://media.steampowered.com/client/installer/steam.dmg'
  homepage 'http://store.steampowered.com/about/'
  license :unknown    # todo: improve this machine-generated value

  app 'Steam.app'
end
