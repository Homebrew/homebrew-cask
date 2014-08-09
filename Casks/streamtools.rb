class Streamtools < Cask
  if Hardware::CPU.is_32_bit?
    url 'https://github.com/nytlabs/streamtools/releases/download/v0.2.3/st_darwin_386-0.2.3.tar.gz'
    sha256 'dd69376923570ea12846bcd75b3a9a46a621cb8882de81e93e71f67308b1d723'
    binary 'st_darwin_386-0.2.3/st'
  else
    url 'https://github.com/nytlabs/streamtools/releases/download/v0.2.3/st_darwin_amd64-0.2.3.tar.gz'
    sha256 'dd8a2d82b018ad283fbdea8bb2427814e87f6bbe070367ba07b4c054d758d75c'
    binary 'st_darwin_amd64-0.2.3/st'
  end
  homepage 'https://github.com/nytlabs/streamtools'
  version '0.2.3'
end
