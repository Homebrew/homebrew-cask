class Streamtools < Cask
  if Hardware::CPU.is_32_bit?
    url 'https://github.com/nytlabs/streamtools/releases/download/0.2.8/st_darwin_386-0.2.8.tar.gz'
    sha256 'de5763ffcd6689d2157ab115e1a3d8a34e85e1e4de7b186f7f5079fe01a5f004'
    binary 'st_darwin_386-0.2.8/st'
  else
    url 'https://github.com/nytlabs/streamtools/releases/download/0.2.8/st_darwin_amd64-0.2.8.tar.gz'
    sha256 '5ca21f4c4c2091c96c508bb277cb5c022f18a8cd3c53abb1ceb11ca0f6454309'
    binary 'st_darwin_amd64-0.2.8/st'
  end
  homepage 'https://github.com/nytlabs/streamtools'
  version '0.2.8'
end
