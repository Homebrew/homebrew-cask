cask 'docker' do
  version '1.12.0.9996'
  sha256 '7ac7c061b135f821fac39e53f7b74233dcaf8f926e4c6d28031acc8717b85107'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'd0c1276909ef816d6fee039c1aa4a5584c1bea4354ad6d5607f9a4e600304c94'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
