cask 'gzdoom' do
  version '3.7.2'
  sha256 'a8f7d7453e3b5926a0606098fbed3433af39176512298e6f9c654e9a27626477'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
