class Googleappenginelauncher < Cask
  version '1.9.6'
  sha256 '82b97a2d02be6834a87783a76d88d1c9fc436e1ee0832476df30d4f5ea938d7a'

  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  homepage 'https://developers.google.com/appengine/'

  link 'GoogleAppEngineLauncher.app'
end
