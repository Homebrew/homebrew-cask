class Googleappenginelauncher < Cask
  version '1.9.13'
  sha256 '6b5f8253518e31cc1723b69956a36f29577ab84b7431413406a33d807e92c15d'

  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  homepage 'https://developers.google.com/appengine/'
  license :unknown

  app 'GoogleAppEngineLauncher.app'
end
