cask 'gzdoom' do
  version '3.4.1'
  sha256 'f8724a28ad36ad197e2e0b54c648d272ef7438bec4b13bf389c924f5701ef2af'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
