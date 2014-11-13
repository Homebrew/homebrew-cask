cask :v1 => 'bleep' do
  version :latest
  sha256 :no_check

  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  homepage 'http://labs.bittorrent.com/bleep/'
  license :gratis

  app 'Bleep.app'
end
