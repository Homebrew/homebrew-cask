cask 'docker' do
  version '1.12.0.10871'
  sha256 'f170610d95c188dee8433eff33c84696c1c8a39421de548a71a1258a458e1b21'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: 'ee03f7c36b4192a64ba30e49a0fa1f8358cc3fe4a8a3af3def066c80f36b18bf'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
