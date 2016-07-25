cask 'docker' do
  version '1.12.0.10404'
  sha256 'ba458f4b568ca9f8395469f1cdc3030f3924bcfc166658ec3e29284af1a1d633'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'dbdd029c3d6576232188b33148ff0aca12c68b329c6646fb3628e2c8e4bdb6cb'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
