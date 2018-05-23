cask 'gzdoom' do
  version '3.3.2'
  sha256 'fb0ca7c6613a69fa7536164e80878df4c85acc0750b8db897ff70ef698e39a88'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '4c0a5595044f0ce7166674f3a6ae698ce08eea89f63868bd842bd7ad8a241b05'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
