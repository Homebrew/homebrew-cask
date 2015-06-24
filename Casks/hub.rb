cask :v1 => 'hub' do
  version '2.2.1'
  sha256 '5e04212ff1db0504c5a085613771f12b38a906a92aec0339cd3ccb467b79ba53'

  url "https://github.com/github/hub/releases/download/v#{version}/hub-mac-amd64-#{version}.tar.gz"
  appcast 'https://github.com/github/hub/releases.atom'
  name 'hub'
  homepage 'https://github.com/github/hub'
  license :mit

  binary "hub-mac-amd64-#{version}/hub"
end
