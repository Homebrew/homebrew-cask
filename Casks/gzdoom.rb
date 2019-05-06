cask 'gzdoom' do
  version '4.1.1'
  sha256 'e53cabe3bf0051263d15d8a8d09af735e74d7c1d32d4cf8e00acaaef1de0aa67'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
