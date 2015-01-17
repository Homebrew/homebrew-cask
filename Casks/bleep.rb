cask :v1 => 'bleep' do
  version :latest
  sha256 :no_check

  # utorrent.com is the official download host per the vendor homepage
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  name 'Bleep'
  homepage 'http://labs.bittorrent.com/bleep/'
  license :gratis

  app 'Bleep.app'
end
