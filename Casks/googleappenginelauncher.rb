class Googleappenginelauncher < Cask
  version '1.9.11'
  sha256 'e198b384760686012438d3a4b2890e682e39e16007b22fc12693d16323bdf5ed'
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  homepage 'https://developers.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
