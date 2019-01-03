cask 'gzdoom' do
  version '3.7.0'
  sha256 'c148667964c46a014dd549cb6804be4a774240b1e0bfd23ec8793bf94e339699'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
