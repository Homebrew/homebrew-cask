cask 'streamtools' do
  version '0.2.8'

  if Hardware::CPU.is_32_bit?
    sha256 'de5763ffcd6689d2157ab115e1a3d8a34e85e1e4de7b186f7f5079fe01a5f004'
    # github.com/nytlabs/streamtools was verified as official when first introduced to the cask
    url "https://github.com/nytlabs/streamtools/releases/download/#{version}/st_darwin_386-#{version}.tar.gz"
    binary "st_darwin_386-#{version}/st"
  else
    sha256 '5ca21f4c4c2091c96c508bb277cb5c022f18a8cd3c53abb1ceb11ca0f6454309'
    # github.com/nytlabs/streamtools was verified as official when first introduced to the cask
    url "https://github.com/nytlabs/streamtools/releases/download/#{version}/st_darwin_amd64-#{version}.tar.gz"
    appcast 'https://github.com/nytlabs/streamtools/releases.atom',
            checkpoint: '804719fa1c17b6827cbe3f0cb28b26c7c0161f9e18c4df3a705005ef332ae53e'
    binary "st_darwin_amd64-#{version}/st"
  end

  name 'streamtools'
  homepage 'https://nytlabs.github.io/streamtools/'
  license :apache
end
