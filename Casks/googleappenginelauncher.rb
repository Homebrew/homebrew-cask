class Googleappenginelauncher < Cask
  version '1.9.7'
  sha256 '583da1171f3769fb697588ed9c6153eb7e8af007af801026b4226b447e923af7'
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  homepage 'https://developers.google.com/appengine/'

  link 'GoogleAppEngineLauncher.app'
end
