cask 'gzdoom' do
  version '3.5.0'
  sha256 'cb56124eaa509dfdfe67163e04f24ba018140257da8bd1c7ede1694fd946081e'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
