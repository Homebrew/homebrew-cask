class Flashlight < Cask
  version 'v0.4-alpha'
  sha256 '125b85cf049fe6e8222998b8d1420399f6b21bb04631fdbfd162dc5700bfd8e3'

  url "https://github.com/nate-parrott/Flashlight/releases/download/#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :unknown

  app 'Flashlight.app'
end
