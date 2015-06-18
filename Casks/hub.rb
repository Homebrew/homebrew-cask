cask :v1 => 'hub' do
  version '2.2.0'
  sha256 'dd34cbdc644f2c486af6af34eb193b56e6ea96e37756a0411e8f0dc065cdcf2b'

  url "https://github.com/github/hub/releases/download/v#{version}/hub-mac-amd64-#{version}.tar.gz"
  appcast 'https://github.com/github/hub/releases.atom'
  name 'hub'
  homepage 'https://github.com/github/hub'
  license :mit

  binary "hub-mac-amd64-#{version}/hub"
end
