class GoogleEarth < Cask
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/earth/client/advanced/current/GoogleEarthMac-Intel.dmg'
  homepage 'https://www.google.com/earth/'

  app 'Google Earth.app'
end
