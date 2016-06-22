cask 'docker' do
  version '1.12.0.9493'
  sha256 'cb21128f5c566770325ada5c20b6d6aefdc5e97c993ea816c49a83ecc5e45f85'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '222a90faff341487a2f3d96c764dc9f8007f8442c0bac907299ba402cf06fdfe'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
