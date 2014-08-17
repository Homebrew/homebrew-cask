class Googleappenginelauncher < Cask
  version '1.9.9'
  sha256 '78e8a5235411a7f8122fbf0870273b39024a05c60fdb94430f5e78d95e353d1f'
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  homepage 'https://developers.google.com/appengine/'

  link 'GoogleAppEngineLauncher.app'
end
