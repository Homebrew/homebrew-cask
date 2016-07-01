cask 'docker' do
  version '1.12.0.9779'
  sha256 'd055103529afdd3c8db8d9554d146872a058b8749576a56ff1e67ee4faec1541'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '0c6f9faf2a84005226fee5d15d63d66dee92c50a3d0a710b0ece35f6c709d704'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
