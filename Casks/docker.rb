cask 'docker' do
  version '1.12.0.10868'
  sha256 'f5480c49a8f8154d88700469199aa267c83545585d0a43e0874682650f55d967'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '9ca8ad8e91e9d44a71547105a8ee52bf27ac2758cb2ba79532507aa3c14f900e'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
