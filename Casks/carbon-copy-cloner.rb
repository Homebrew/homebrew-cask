class CarbonCopyCloner < Cask
  version '4.0.3274'
  sha256 '7d6479cd68ba9e8f9e0a74b2426d38c99ad3dea1c3a29dd7aaad8d8854d8a753'

  url "http://bombich.com/software/files/ccc-#{version}.zip"
  appcast 'http://www.bombich.com/software/updates/ccc.php'
  homepage 'http://bombich.com/'
  license :unknown

  app 'Carbon Copy Cloner.app'
end
