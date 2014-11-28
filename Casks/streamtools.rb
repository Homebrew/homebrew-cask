cask :v1 => 'streamtools' do
  version '0.2.8'

  if Hardware::CPU.is_32_bit?
    sha256 'de5763ffcd6689d2157ab115e1a3d8a34e85e1e4de7b186f7f5079fe01a5f004'
    url "https://github.com/nytlabs/streamtools/releases/download/#{version}/st_darwin_386-#{version}.tar.gz"
    binary "st_darwin_386-#{version}/st"
  else
    sha256 '5ca21f4c4c2091c96c508bb277cb5c022f18a8cd3c53abb1ceb11ca0f6454309'
    url "https://github.com/nytlabs/streamtools/releases/download/#{version}/st_darwin_amd64-#{version}.tar.gz"
    binary "st_darwin_amd64-#{version}/st"
  end

  homepage 'https://github.com/nytlabs/streamtools'
  license :oss
end
