cask 'docker' do
  version '1.12.1.12133'
  sha256 '09570e4bca991cb5fc3b04d8f64835c910942c5b4b35366ffb6f1af90ad0f336'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '70ba05cde55d1499e124b2a164ff0256294a2ec1793ea1d38462b3a80738b489'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'

  auto_updates true

  app 'Docker.app'
end
