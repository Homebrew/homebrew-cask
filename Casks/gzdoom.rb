cask 'gzdoom' do
  version '4.1.0'
  sha256 'cd5c16c0635890d58158a70a43617ecaa7b232b8395ed354f45f4dd07eba91bf'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
